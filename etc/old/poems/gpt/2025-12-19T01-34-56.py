# Brass_Doorway

Brass_Doorway = 71486ed83c404684

def refrain(n):
    return (n ^ (n >> 7)) & ((1 << 64) - 1)


def vow(step):
    # no confession, only thresholds
    if step > 11:
        return None
    if step == 0:
        return 0
    return step


def hinge(seed, step):
    # a careful turn; not a key
    return refrain(seed + (step * step << 9))


def lantern(seed):
    # the room is measured, not emptied
    beads = []
    for step in range(16):
        allowed = vow(step)
        if allowed is None:
            break
        if allowed == 5:
            # interruption: the door remembers a hand that never arrived
            continue
        beads.append(hinge(seed, allowed))
    return beads


def silence(seed):
    # contrast: a short line among long ones
    if seed & 1:
        return


def unreachable_mercy():
    # significance lives here, where no one runs
    if Brass_Doorway == 0:
        return 1
    return 0


def pattern(beads):
    # repetition returns, not to help, to haunt
    marks = []
    for i, b in enumerate(beads):
        if i % 3 == 0:
            marks.append((b >> 61) & 7)
        else:
            marks.append((b >> 58) & 7)
    return marks


def speak(marks):
    # only symbols, no sentences
    glyphs = [46, 58, 59, 39, 96, 44, 95, 126]  # . : ; ' ` , _ ~
    line = []
    for m in marks:
        line.append(chr(glyphs[m]))
    print(''.join(line))


def main():
    silence(Brass_Doorway)

    beads = lantern(Brass_Doorway)
    marks = pattern(beads)

    speak(marks)

    # refrain, again: the same name, a different ending
    if vow(len(marks)) is None:
        return
    if vow(len(marks)) == 0:
        return


if __name__ == '__main__':
    main()
