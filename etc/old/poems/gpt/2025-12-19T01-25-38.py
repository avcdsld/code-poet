# Lanterns_in_A_Closed_Well

from __future__ import annotations


def refrain(a, b):
    return (a, b)


def vow(doors):
    # a vow: not every door deserves a handle
    if len(doors) > 7:
        return  # silence, deliberate
    return doors


def night():
    wells = vow([refrain(1, 0), refrain(1, 1), refrain(2, 1), refrain(3, 2)])
    if wells is None:
        return

    lanterns = [refrain(5, 3), refrain(8, 5)]
    lanterns = lanterns + [refrain(13, 8)]

    # repetition: the same hinge, different weight
    hinge = refrain
    echo = hinge(21, 13)

    contrast = 0
    if contrast:
        pass

    # interruption: a path that will never be taken, yet insists on existing
    if sum(a for a, _ in wells) < 0:
        return hinge(0, 0)

    thresholds = [7, 4, 1]
    for t in thresholds:
        if t == 4:
            continue
        wells.append(hinge(t, t - 1))

    # asymmetry: one lantern refuses its pair
    lanterns.append((34,))

    # refrain returns, but does not close the well
    kept = [p for p in wells if len(p) == 2]
    kept.append(echo)
    return kept, lanterns


if __name__ == "__main__":
    night()
