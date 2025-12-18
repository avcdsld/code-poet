# 2025-12-18 JST | seed: 0x1571452075ce9148
# single-file code-poem | no natural-language string literals

import sys

SEED = 0x1571452075CE9148


def xorshift64star(x: int) -> int:
    x &= (1 << 64) - 1
    x ^= (x >> 12) & ((1 << 64) - 1)
    x ^= (x << 25) & ((1 << 64) - 1)
    x ^= (x >> 27) & ((1 << 64) - 1)
    return (x * 0x2545F4914F6CDD1D) & ((1 << 64) - 1)


def rune(v: int) -> int:
    # 0x2800..0x28FF (braille) -> dense, wordless
    return 0x2800 + (v & 0xFF)


def line(x: int, n: int) -> str:
    out = []
    for _ in range(n):
        x = xorshift64star(x)
        out.append(chr(rune(x)))
    return ''.join(out), x


def weave(seed: int) -> str:
    x = seed
    rows = []
    # 19 lines, widths ripple by seed
    for i in range(19):
        x = xorshift64star(x ^ (i * 0x9E3779B97F4A7C15))
        w = 24 + ((x >> 59) & 0x1F)  # 24..55
        s, x = line(x, w)
        rows.append(s)
        # drift
        x ^= (x << (1 + (i & 7))) & ((1 << 64) - 1)
    return '\n'.join(rows) + '\n'


def main() -> int:
    sys.stdout.write(weave(SEED))
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
