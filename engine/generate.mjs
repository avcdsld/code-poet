import OpenAI from "openai";
import Anthropic from "@anthropic-ai/sdk";
import { z } from "zod";
import { zodTextFormat } from "openai/helpers/zod";
import fs from "node:fs";
import path from "node:path";
import crypto from "node:crypto";

const ROOT = path.resolve(process.cwd());

const MODEL = process.argv[2] || process.env.MODEL || "gpt";
if (MODEL !== "gpt" && MODEL !== "claude") {
  console.error("Error: MODEL must be 'gpt' or 'claude'");
  process.exit(1);
}

const DIRS = {
  poems: path.join(ROOT, "poems", MODEL),
  prompts: path.join(ROOT, "prompts", MODEL),
  manifests: path.join(ROOT, "manifests", MODEL),
  ruleset: path.join(ROOT, "ruleset"),
};

// ── utilities ──

function ensureDirs() {
  for (const d of Object.values(DIRS)) fs.mkdirSync(d, { recursive: true });
}
function readText(p) { return fs.readFileSync(p, "utf8"); }
function writeText(p, s) { fs.writeFileSync(p, s, "utf8"); }
function sha256(s) { return crypto.createHash("sha256").update(s, "utf8").digest("hex"); }

function jstTodayISO() {
  const jst = new Date(Date.now() + 9 * 3600000);
  return jst.toISOString().slice(0, 10);
}
function jstTodayCompact() { return jstTodayISO().replace(/-/g, ""); }
function jstNowISO() {
  const jst = new Date(Date.now() + 9 * 3600000);
  return jst.toISOString().slice(0, 19).replace(/:/g, "-");
}
function dailySeed(dayISO) { return sha256(dayISO).slice(0, 16); }
function isExceptionDay(seedHex) { return sha256(seedHex).slice(0, 2) === "00"; }
function codeHash7(code) { return sha256(code).slice(0, 7); }

function countLines(code) {
  const trimmed = code.replace(/\s+$/g, "");
  return trimmed ? trimmed.split("\n").length : 0;
}

// ── history ──

function recentManifests(limit = 14) {
  if (!fs.existsSync(DIRS.manifests)) return [];
  return fs.readdirSync(DIRS.manifests)
    .filter(f => f.endsWith(".json") && !f.startsWith("FAILED"))
    .sort().slice(-limit)
    .flatMap(f => { try { return [JSON.parse(readText(path.join(DIRS.manifests, f)))]; } catch { return []; } });
}

function recentContext() {
  const rec = recentManifests(14);
  const last5langs = rec.slice(-5).map(m => String(m.language || "").toLowerCase()).filter(Boolean);
  const banned = new Set(last5langs);

  // also ban anything used ≥4 times in last 14 days
  const counts = {};
  for (const m of rec) {
    const k = String(m.language || "").toLowerCase();
    counts[k] = (counts[k] || 0) + 1;
  }
  for (const [k, v] of Object.entries(counts)) { if (v >= 4) banned.add(k); }

  // recent titles for anti-repetition
  let poemFiles = null;
  const titles = rec.slice(-10).map(m => {
    try {
      let poem = m.poemFile;
      if (!poem) {
        if (poemFiles === null) {
          try { poemFiles = fs.readdirSync(DIRS.poems); } catch { poemFiles = []; }
        }
        const datePrefix = m.day?.replace(/-/g, "");
        if (!datePrefix) return null;
        poem = poemFiles.find(f => f.startsWith(datePrefix) && !f.startsWith("FAILED"));
      }
      if (!poem) return null;
      const first = readText(path.join(DIRS.poems, poem)).split("\n")[0];
      return first.replace(/^(\/\/|--|#|;+)\s*/, "").trim() || null;
    } catch { return null; }
  }).filter(Boolean);

  const last10langs = rec.slice(-10).map(m => m.language).filter(Boolean);

  return { banned: [...banned], titles, last10langs };
}

// ── ruleset ──

function readRulesetFiles() {
  const read = (name) => {
    const p = path.join(DIRS.ruleset, name);
    return fs.existsSync(p) ? readText(p).trim() : "";
  };
  const version = read("VERSION.txt") || "v0.0";
  const references = read("references.txt");
  const base = read("base.txt");
  const exception = read("exception.txt");

  const full = [
    `# ruleset: ${version}`, "", references, "", base, "", exception
  ].join("\n").trim() + "\n";

  return { version, references, base, full };
}

// ── schemas ──

const SketchSchema = z.object({
  language: z.string().min(1),
  mechanism: z.string().min(1),
  resonance: z.string().min(1),
  draft: z.string().min(1),
});
const DiscoverySchema = z.object({
  sketches: z.array(SketchSchema).min(3).max(5),
});
const PoemSchema = z.object({
  language: z.string().min(1),
  extension: z.string().min(1).regex(/^[a-z0-9]{1,8}$/),
  code: z.string().min(1),
});

const discoveryJsonSchema = {
  type: "object",
  properties: {
    sketches: {
      type: "array",
      items: {
        type: "object",
        properties: {
          language: { type: "string" },
          mechanism: { type: "string" },
          resonance: { type: "string" },
          draft: { type: "string" },
        },
        required: ["language", "mechanism", "resonance", "draft"],
        additionalProperties: false,
      },
    },
  },
  required: ["sketches"],
  additionalProperties: false,
};

const poemJsonSchema = {
  type: "object",
  properties: {
    language: { type: "string" },
    extension: { type: "string" },
    code: { type: "string" },
  },
  required: ["language", "extension", "code"],
  additionalProperties: false,
};

// ── prompts ──

function buildDiscoveryPrompt({ references, exceptionDay, banned, titles, last10langs, seed }) {
  const stringNote = exceptionDay
    ? "Exception day: exactly ONE natural-language string literal is allowed."
    : "Normal day: natural-language string literals are FORBIDDEN.";

  return [
    references,
    "",
    "---",
    "",
    stringNote,
    "",
    "---",
    "",
    "Recent history (do NOT repeat):",
    `  Languages (last 10 days): ${last10langs.join(", ") || "(none)"}`,
    `  Titles (last 10 days): ${titles.join("; ") || "(none)"}`,
    `  Do NOT use these languages today: ${banned.join(", ") || "(none)"}`,
    "",
    "---",
    "",
    `Daily seed: ${seed}`,
    "",
    "Your task: find a mechanism in a programming language that carries poetic meaning.",
    "",
    "A mechanism is a specific language behavior — a type constraint, error behavior,",
    "scope rule, ownership transfer, evaluation order, keyword semantics, pattern match",
    "exhaustiveness, mutability rule, or structural feature — whose technical behavior",
    "resonates beyond its intended purpose.",
    "",
    "Propose 3 sketches. Each must use a DIFFERENT language (not from the banned list).",
    "Each draft should be 2–10 lines of code.",
    "",
    "Return STRICT JSON:",
    '{',
    '  "sketches": [',
    '    {',
    '      "language": "string",',
    '      "mechanism": "the specific language behavior being exploited",',
    '      "resonance": "why it carries meaning beyond its technical purpose (one sentence)",',
    '      "draft": "2–10 lines of code"',
    '    }',
    '  ]',
    '}',
  ].join("\n");
}

function buildCompositionPrompt({ base, exceptionDay, sketches }) {
  const stringNote = exceptionDay
    ? "Exception day: exactly ONE natural-language string literal is allowed."
    : "Normal day: natural-language string literals are FORBIDDEN.";

  return [
    "You are composing a code poem from a discovery.",
    "",
    "Three mechanism sketches were found. Select the one where the mechanism",
    "carries the deepest meaning and compose the final poem.",
    "",
    "Sketches:",
    JSON.stringify(sketches, null, 2),
    "",
    "---",
    "",
    base,
    "",
    stringNote,
    "",
    "Return STRICT JSON:",
    '{',
    '  "language": "string",',
    '  "extension": "string (no dot)",',
    '  "code": "string (entire file contents)"',
    '}',
  ].join("\n");
}

// ── API calls ──

const GPT_MODEL = process.env.MODEL_GPT || "gpt-5.5";
const CLAUDE_MODEL = process.env.MODEL_CLAUDE || "claude-opus-4-6";

async function callGPT(client, promptText, zodSchema, schemaName) {
  const resp = await client.responses.parse({
    model: GPT_MODEL,
    input: promptText,
    store: false,
    text: { format: zodTextFormat(zodSchema, schemaName) },
  });
  return resp.output_parsed;
}

async function callClaude(client, promptText, jsonSchema) {
  const resp = await client.messages.create({
    model: CLAUDE_MODEL,
    max_tokens: 4096,
    messages: [{ role: "user", content: promptText }],
    output_format: { type: "json_schema", schema: jsonSchema },
  });
  const content = resp.content[0];
  if (content.type !== "text") throw new Error("Unexpected response type from Claude");
  return JSON.parse(content.text);
}

async function discover(client, promptText) {
  if (MODEL === "gpt") {
    return callGPT(client, promptText, DiscoverySchema, "discovery");
  } else {
    const raw = await callClaude(client, promptText, discoveryJsonSchema);
    return DiscoverySchema.parse(raw);
  }
}

async function compose(client, promptText) {
  if (MODEL === "gpt") {
    return callGPT(client, promptText, PoemSchema, "poem");
  } else {
    const raw = await callClaude(client, promptText, poemJsonSchema);
    return PoemSchema.parse(raw);
  }
}

// ── main ──

async function main() {
  ensureDirs();

  const dayISO = jstTodayISO();
  const dayCompact = jstTodayCompact();
  const timestamp = jstNowISO();
  const seed = dailySeed(dayISO);
  const exceptionDay = isExceptionDay(seed);

  const { version: rulesetVersion, references, base, full: rulesetFull } = readRulesetFiles();
  const { banned, titles, last10langs } = recentContext();

  const modelName = MODEL === "gpt" ? GPT_MODEL : CLAUDE_MODEL;

  let client;
  if (MODEL === "gpt") {
    client = new OpenAI();
  } else {
    if (!process.env.ANTHROPIC_API_KEY) throw new Error("ANTHROPIC_API_KEY required");
    client = new Anthropic({
      apiKey: process.env.ANTHROPIC_API_KEY,
      defaultHeaders: { "anthropic-beta": "structured-outputs-2025-11-13" },
    });
  }

  let lastErr = null;

  for (let attempt = 1; attempt <= 3; attempt++) {
    try {
      // ── Stage 1: Discovery ──
      console.log(`attempt ${attempt}: discovering...`);
      const discoveryPrompt = buildDiscoveryPrompt({
        references, exceptionDay, banned, titles, last10langs, seed,
      });
      const discovery = await discover(client, discoveryPrompt);
      const sketches = discovery.sketches;
      console.log(`  found ${sketches.length} sketches: ${sketches.map(s => s.language).join(", ")}`);

      // ── Stage 2: Composition ──
      console.log("  composing...");
      const compositionPrompt = buildCompositionPrompt({
        base, exceptionDay, sketches,
      });
      const { language, extension, code } = await compose(client, compositionPrompt);

      // ── Validate ──
      const langKey = language.toLowerCase();
      if (banned.includes(langKey)) throw new Error(`Banned language: ${language}`);
      if (!/^[a-z0-9]{1,8}$/.test(extension)) throw new Error(`Invalid extension: ${extension}`);
      const lines = countLines(code);
      if (lines > 50) throw new Error(`Over 50 lines (${lines})`);

      // ── Save ──
      const hash = codeHash7(code);
      const prefix = `${dayCompact}-${hash}`;

      writeText(path.join(DIRS.poems, `${prefix}.${extension}`), code.replace(/\s+$/g, "") + "\n");
      writeText(path.join(DIRS.prompts, `${prefix}.discovery.txt`), discoveryPrompt);
      writeText(path.join(DIRS.prompts, `${prefix}.sketches.json`), JSON.stringify(discovery, null, 2) + "\n");
      writeText(path.join(DIRS.prompts, `${prefix}.prompt.txt`), compositionPrompt);
      writeText(path.join(DIRS.prompts, `${prefix}.ruleset.txt`), rulesetFull);

      const manifest = {
        day: dayISO,
        timestamp,
        seed,
        exceptionDay,
        language,
        extension,
        lines,
        poemFile: `${prefix}.${extension}`,
        poemSha256: sha256(code),
        discoveryPromptSha256: sha256(discoveryPrompt),
        compositionPromptSha256: sha256(compositionPrompt),
        rulesetVersion,
        rulesetSha256: sha256(rulesetFull),
        model: modelName,
        sketchLanguages: sketches.map(s => s.language),
        sketchMechanisms: sketches.map(s => s.mechanism),
      };
      writeText(path.join(DIRS.manifests, `${prefix}.json`), JSON.stringify(manifest, null, 2) + "\n");

      console.log(`wrote: ${prefix}.${extension} | ${language} | ${lines} lines | exception: ${exceptionDay}`);
      return;

    } catch (e) {
      lastErr = e;
      console.log(`  attempt ${attempt} failed: ${e?.message ?? String(e)}`);
    }
  }

  // ── Failure ──
  const failHash = sha256(seed + timestamp).slice(0, 7);
  const failPrefix = `FAILED-${dayCompact}-${failHash}`;
  writeText(path.join(DIRS.poems, `${failPrefix}.txt`), `${lastErr?.name}: ${lastErr?.message}\n`);
  writeText(path.join(DIRS.prompts, `${failPrefix}.ruleset.txt`), rulesetFull);

  const manifest = {
    day: dayISO, timestamp, seed, exceptionDay,
    failed: true,
    error: `${lastErr?.name}: ${lastErr?.message}`,
    rulesetVersion,
    rulesetSha256: sha256(rulesetFull),
    model: modelName,
  };
  writeText(path.join(DIRS.manifests, `${failPrefix}.json`), JSON.stringify(manifest, null, 2) + "\n");
  console.log(`failed: ${failPrefix}`);
}

main().catch(e => { console.error(e); process.exit(1); });
