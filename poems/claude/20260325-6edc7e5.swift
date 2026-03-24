// Almost Held

let almost = 0.999
let held = 1.0

func reach(_ distance: Double) -> Double? {
    guard distance < held else { return nil }
    return distance
}

let first = reach(almost)
let second = reach(almost)
let third = reach(held)

let kept = [
    first,
    second,
    third
]

for thing in kept {
    if thing == nil {
    }
}

let never = reach(held + held)
