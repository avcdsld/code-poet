// The Distance Between Us

let you = 0
let me = 1

let almost = me - you
let never = me * you

func reach(_ from: Int, _ to: Int) -> Int? {
    guard from != to else { return nil }
    return from
}

let tried = reach(me, you)
let stayed = reach(you, you)

let apart = almost
let together: Int? = nil

if together == nil {
    let _ = apart
}
