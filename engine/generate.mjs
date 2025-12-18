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

function ensureDirs() {
  for (const d of Object.values(DIRS)) fs.mkdirSync(d, { recursive: true });
}

function readText(p) {
  return fs.readFileSync(p, "utf8");
}

function writeText(p, s) {
  fs.writeFileSync(p, s, "utf8");
}

function sha256(s) {
  return crypto.createHash("sha256").update(s, "utf8").digest("hex");
}

function jstTodayISO() {
  const now = new Date();
  const jst = new Date(now.getTime() + 9 * 60 * 60 * 1000);
  return jst.toISOString().slice(0, 10); // YYYY-MM-DD
}

function jstNowISO() {
  const now = new Date();
  const jst = new Date(now.getTime() + 9 * 60 * 60 * 1000);
  // YYYY-MM-DDTHH-MM-SS format for filename-safe timestamp
  return jst.toISOString().slice(0, 19).replace(/:/g, "-");
}

function dailySeed(dayISO) {
  return sha256(dayISO).slice(0, 16);
}

function isExceptionDay(seedHex) {
  // Bルール頻度：~1/256（sha256(seed)の先頭2桁が"00"）
  return sha256(seedHex).slice(0, 2) === "00";
}

function countLines(code) {
  const trimmed = code.replace(/\s+$/g, "");
  if (!trimmed) return 0;
  return trimmed.split("\n").length;
}

function readRuleset() {
  const versionPath = path.join(DIRS.ruleset, "VERSION.txt");
  const basePath = path.join(DIRS.ruleset, "base.txt");
  const excPath = path.join(DIRS.ruleset, "exception.txt");

  if (!fs.existsSync(basePath)) throw new Error("Missing ruleset/base.txt");
  if (!fs.existsSync(excPath)) throw new Error("Missing ruleset/exception.txt");

  const version = fs.existsSync(versionPath) ? readText(versionPath).trim() : "v0.0";
  const base = readText(basePath).trim();
  const exc = readText(excPath).trim();

  const full = [`# ruleset_version: ${version}`, "", base, "", exc].join("\n").trim() + "\n";
  return { version, full };
}

function buildPrompt({ dayISO, seed, exceptionDay, rulesetFull }) {
  const reminder = exceptionDay
    ? "Reminder: you may include EXACTLY ONE natural-language string literal today."
    : "Reminder: natural-language string literals are FORBIDDEN today.";

  return [
    rulesetFull.trim(),
    "",
    "Given:",
    `- Date (JST): ${dayISO}`,
    `- Daily seed (hex): ${seed}`,
    `- Exception day: ${exceptionDay ? "YES" : "NO"}`,
    "",
    reminder,
    "",
    "Return STRICT JSON ONLY with keys:",
    '- "language": string',
    '- "extension": string (no dot)',
    '- "code": string (entire file contents)',
    "",
  ].join("\n");
}

const PoemSchema = z.object({
  language: z.string().min(1),
  extension: z.string().min(1).regex(/^[a-z0-9]{1,8}$/),
  code: z.string().min(1),
});

async function generateOnceGPT(client, promptText) {
  const resp = await client.responses.parse({
    model: "gpt-5.2",
    input: promptText,
    store: false,
    text: {
      format: zodTextFormat(PoemSchema, "poem"),
    },
  });

  const data = resp.output_parsed;
  const language = data.language.trim();
  const extension = data.extension.trim().replace(/^\./, "");
  const code = data.code;

  if (countLines(code) > 100) throw new Error("Over 100 lines.");

  return { language, extension, code };
}

async function generateOnceClaude(client, promptText) {
  const resp = await client.messages.create({
    model: "claude-opus-4-5",
    max_tokens: 4096,
    messages: [
      {
        role: "user",
        content: promptText,
      },
    ],
    output_format: {
      type: "json_schema",
      schema: {
        type: "object",
        properties: {
          language: { type: "string" },
          extension: { type: "string" },
          code: { type: "string" },
        },
        required: ["language", "extension", "code"],
        additionalProperties: false,
      },
    },
  });

  const content = resp.content[0];
  if (content.type !== "text") {
    throw new Error("Unexpected response type from Claude");
  }

  const jsonText = content.text;
  const parsed = JSON.parse(jsonText);
  const data = PoemSchema.parse(parsed);

  const language = data.language.trim();
  const extension = data.extension.trim().replace(/^\./, "");
  const code = data.code;

  if (countLines(code) > 100) throw new Error("Over 100 lines.");

  return { language, extension, code };
}

async function main() {
  ensureDirs();

  const dayISO = jstTodayISO();
  const timestamp = jstNowISO();
  const seed = dailySeed(dayISO);
  const exceptionDay = isExceptionDay(seed);

  const { version: rulesetVersion, full: rulesetFull } = readRuleset();

  const rulesetSnapPath = path.join(DIRS.prompts, `${timestamp}.ruleset.txt`);
  writeText(rulesetSnapPath, rulesetFull);

  const promptText = buildPrompt({ dayISO, seed, exceptionDay, rulesetFull });
  const promptPath = path.join(DIRS.prompts, `${timestamp}.prompt.txt`);
  writeText(promptPath, promptText);

  let client;
  let generateOnce;
  let modelName;

  if (MODEL === "gpt") {
    client = new OpenAI(); // OPENAI_API_KEY is in the environment variables
    generateOnce = generateOnceGPT;
    modelName = "gpt-5.2";
  } else {
    if (!process.env.ANTHROPIC_API_KEY) {
      throw new Error("ANTHROPIC_API_KEY environment variable is required for Claude");
    }
    client = new Anthropic({
      apiKey: process.env.ANTHROPIC_API_KEY,
      defaultHeaders: {
        "anthropic-beta": "structured-outputs-2025-11-13",
      },
    });
    generateOnce = generateOnceClaude;
    modelName = "claude-opus-4-5";
  }

  let lastErr = null;

  for (let attempt = 1; attempt <= 4; attempt++) {
    try {
      const { language, extension, code } = await generateOnce(client, promptText);

      if (!/^[a-z0-9]{1,8}$/.test(extension)) throw new Error("Invalid extension.");
      const lines = countLines(code);
      if (lines > 100) throw new Error("Over 100 lines.");

      const poemPath = path.join(DIRS.poems, `${timestamp}.${extension}`);
      writeText(poemPath, code.replace(/\s+$/g, "") + "\n");

      const manifest = {
        day: dayISO,
        timestamp,
        seed,
        exceptionDay,
        language,
        extension,
        lines,
        poemSha256: sha256(code),
        promptSha256: sha256(promptText),
        rulesetVersion,
        rulesetSha256: sha256(rulesetFull),
        model: modelName,
      };

      const manifestPath = path.join(DIRS.manifests, `${timestamp}.json`);
      writeText(manifestPath, JSON.stringify(manifest, null, 2) + "\n");

      console.log(
        "wrote:",
        poemPath,
        "model:",
        modelName,
        "language:",
        language,
        "lines:",
        lines,
        "ruleset:",
        rulesetVersion,
        "exceptionDay:",
        exceptionDay
      );
      return;
    } catch (e) {
      lastErr = e;
      console.log(`attempt ${attempt} failed:`, e?.message ?? String(e));
    }
  }

  const failPath = path.join(DIRS.poems, `FAILED-${timestamp}.txt`);
  writeText(failPath, `${lastErr?.name ?? "Error"}: ${lastErr?.message ?? String(lastErr)}\n`);

  const manifest = {
    day: dayISO,
    timestamp,
    seed,
    exceptionDay,
    failed: true,
    error: `${lastErr?.name ?? "Error"}: ${lastErr?.message ?? String(lastErr)}`,
    promptSha256: sha256(promptText),
    rulesetVersion,
    rulesetSha256: sha256(rulesetFull),
    model: modelName,
  };

  const manifestPath = path.join(DIRS.manifests, `${timestamp}.json`);
  writeText(manifestPath, JSON.stringify(manifest, null, 2) + "\n");

  console.log("failed, wrote:", failPath);
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
