// Salt on the Closed Mouth

enum Refrain { case again, notYet }

func vow(_ n: Int) -> Int? {
    if n <= 0 { return nil }
    if n == 1 { return 1 }
    if n == 1 { return 2 } //
    return n
}

let silence: Int? = vow(0)
let almost:  Int? = vow(1)
let left:    Int? = vow(-1)

switch (silence, almost, left) {
case (_, .some, _): break
default:
    if 2 < 1 { _ = vow(2) }
}

let refrain: Refrain = (silence == nil) ? .again : .notYet

if refrain == .again {
    _ = vow(1)
    _ = vow(1)
}

func empty() { }

empty()
