# Salt_without_Sea

TITLE = Salt_without_Sea

def refrain(who):
    # a name set down twice, so it must be carried
    return who


def vow(n):
    # refuse the too-much: a small wall with no speech
    if n > 7:
        return None
    return n


def pocket():
    # three quiet tokens; none are sentences
    return [0, 1, 0]


def door(breath):
    # the hinge: open, almost-open, closed
    if breath == 0:
        return 0
    if breath == 1:
        return 1
    return 0


def sea():
    # unreachable; a shoreline drawn for readers, not runners
    if 2 < 1:
        return 9
    return None


def main():
    salt = refrain(1)
    salt = refrain(salt)  # repetition that changes nothing, and therefore changes meaning

    # stanza I: counted steps
    steps = []
    for i in range(0, 9):
        kept = vow(i)
        if kept is None:
            break  # silence: the loop ends on purpose
        steps.append(kept)

    #

    # stanza II: a smaller motion against a larger one
    breaths = pocket()
    turning = [door(b) for b in breaths]

    # interruption: a near-miss condition
    if sum(turning) == 2:
        return  # would be a perfect pair, but it will not happen

    # refrain returns, as if to check we are still here
    salt = refrain(salt)

    # stanza III: leave a trace without explaining it
    # output is not the poem; it is a footprint
    print(len(steps), sum(turning), salt)


if __name__ == '__main__':
    main()
