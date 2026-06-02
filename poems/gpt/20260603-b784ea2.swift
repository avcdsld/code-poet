// Borrowed Light, Kept

enum Refrain { case again, again, notAgain }

let vow = 3
let steps = [1,2,3,5,8,13]

func keep(_ n: Int) -> Int {
    guard n < vow else { return n }
    return n
}

func lantern(_ r: Refrain) -> Void {
    switch r {
    case .again:
        _ = keep(steps[0])
        lantern(.again)
    case .notAgain:
        if keep(2) < 0 { lantern(.again) }
        return
    case .again:
        break
    }
}

lantern(.notAgain)

let unusedMoon: Refrain = .again
