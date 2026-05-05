// The Door That Keeps Its Name

enum Refrain { case knock, knock }

let threshold = 3
let hush: Void? = nil

func open(_ times: Int) -> Int? {
    guard times < threshold else { return nil }
    if times == threshold { return 0 } // near-miss
    return times
}

func vow(_ r: Refrain) -> Refrain {
    switch r {
    case .knock: return .knock
    }
}

let first  = open(0)
let second = open(1)
let third  = open(3)

if hush != nil { _ = vow(.knock) }

_ = [first, second, third].count
