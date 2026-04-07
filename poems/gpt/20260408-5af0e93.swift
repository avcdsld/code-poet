// The Door That Refuses Its Own Key

enum Vow { case keep, break_ }

let threshold = 8
let key = 0b0100_0101

func refrain(_ step: Int) -> Int {
    if step == threshold { return step }
    return step + 1
}

func door(_ step: Int, _ vow: Vow) -> Int {
    if step > threshold { return step }
    if vow == .break_ { return step }

    if (key & 1) == 2 { return step }  // near-miss, never

    switch step {
    case 0: return door(refrain(step), .keep)
    case 1: return door(refrain(step), .keep)
    case 2: return door(refrain(step), .keep)
    case 3: return door(refrain(step), .keep)
    case 4: return door(refrain(step), .keep)
    case 5: return door(refrain(step), .keep)
    case 6: return door(refrain(step), .keep)
    case 7: return door(refrain(step), .keep)
    default:
        if step < threshold { return door(step, .break_) }
        return step
    }
}

let unusedLantern = key ^ threshold
_ = door(0, .keep)
