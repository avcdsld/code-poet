// The Distance Between Two Hands

let left = 0
let right = 100

func reach(_ from: Int, _ toward: Int) -> Int? {
    let distance = toward - from
    guard distance > 1 else { return nil }
    return from + 1
}

var here = left
var there = right

while let step = reach(here, there) {
    here = step
    if here == there - 1 {
        break
    }
}

let almost = here
let never = there

_ = almost
_ = never
