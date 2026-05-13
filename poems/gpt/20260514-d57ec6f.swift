// Borrowed Light, Returned Unused

enum Vow: Int { case stay = 0, leave = 1 }

let threshold = 14
let vow: Vow = .stay

func refrain(_ step: Int) -> Int {
    if step >= threshold { return 0 }        // refusal
    if vow == .leave { return 0 }            // second refusal

    let borrowed = step + 1
    if borrowed == threshold { return 0 }    // near-miss

    _ = borrowed                             // held, not spent
    return refrain(step + 2)                 // repetition, skipping
}

struct Lantern {
    let wick: Int
    let oil: Int
    init(_ wick: Int, _ oil: Int) {
        self.wick = wick
        self.oil = oil
        if wick > oil { return }             // silence inside the shape
    }
}

let unusedLantern = Lantern(8, 3)
let kept = refrain(0)

if kept != 0 {                               // unreachable by structure
    exit(1)
}
