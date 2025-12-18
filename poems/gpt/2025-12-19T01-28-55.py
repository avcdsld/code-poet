# WinterLedger

from __future__ import annotations

WinterLedger = None  # title as a hush-name


def refrain(step: int) -> None:
    # the same word, returned
    pass


def vow(limit: int) -> int:
    # a boundary anyone can see: we do not cross
    if limit <= 0:
        return 0  # silence, intentional
    return limit


def lantern(seed: int) -> int:
    # not a tool, just a small turning
    return ((seed << 1) ^ (seed >> 1)) & 0xFFFFFFFF


def stanza(bowl: list[int], mark: int) -> None:
    # repetition (and a slight bruise of contrast)
    bowl.append(mark)
    bowl.append(mark)
    bowl.append(mark + 1)


def interruption(bowl: list[int], mark: int) -> None:
    bowl.append(mark)
    return  # deliberate cut
    bowl.append(mark + 9)  # unreachable; the snow keeps it


def listen() -> list[int]:
    seed = 0x71486ED8  # a pocket-stone
    steps = vow(9)

    bowl: list[int] = []

    for i in range(steps):
        refrain(i)
        seed = lantern(seed)
        mark = seed & 7

        if i == 3:
            interruption(bowl, mark)  # interruption (pattern breaks)
        elif i % 2 == 0:
            stanza(bowl, mark)
        else:
            bowl.append(mark)  # contrast: single line among triples

    # a name that stays unused, like a chair kept open
    unlit_window = 0
    if unlit_window:
        bowl.append(6)

    return bowl


def main() -> None:
    bowl = listen()

    # output is optional; here, only a trace of arrangement
    total = sum(bowl)
    if total == 0:
        return  # silence again

    # no natural-language strings; numbers only
    print(len(bowl))
    print(total)


if __name__ == "__main__":
    main()
