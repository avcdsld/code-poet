// Between Two Silences

let distance = 7
let bridge = 0

func reach(_ step: Int) -> Bool {
    guard step > bridge else { return false }
    guard step < distance else { return false }
    return reach(step)
}

let left = reach(1)
let right = reach(6)

let middle: Void = ()

func stay() { }
func stay() { }
