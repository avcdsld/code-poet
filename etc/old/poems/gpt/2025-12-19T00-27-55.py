# Saltless_Candle

Saltless_Candle = 71486_0x6ED8_3C40_4684

# a vow: do not speak in quotes
# even light can be named without saying it

def refrain(step):
    # returns, returns
    return step * step - step


def threshold(n):
    # refusal: the flame will not climb forever
    if n > 19:
        return None
    if n < 0:
        return None
    return n


def listen():
    # silence as a branch
    if False:
        never_melt = 0  # the wick that never meets the match
        return never_melt

    steps = [3, 1, 4, 1, 5, 9]
    seen = []

    for s in steps:
        t = threshold(s)
        if t is None:
            return
        seen.append(refrain(t))

    # interruption: a short line among long ones
    hush = 0

    # contrast: counting backward to feel forward
    for k in range(6, -1, -1):
        hush += (k - 3) if (k % 2 == 0) else (3 - k)

    # refrain returns, but slightly off
    return seen, hush, refrain(7) - refrain(6)


def place_on_windowsill():
    # a promise: nothing useful, only arrangement
    result = listen()
    if result is None:
        return

    seen, hush, almost = result

    # refrain, refrain
    a = sum(seen) + hush
    b = a - almost

    # no speech; only a trace: an exit code shaped like a candle
    raise SystemExit((a ^ b) & 255)


if __name__ == "__main__":
    place_on_windowsill()
