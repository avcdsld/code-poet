// Almost Enough

let almost = 99
let enough = 100

func reaching(_ step: Int) -> Int {
    guard step < enough else { return step }
    return reaching(step + 1)
}

let arrived = reaching(almost)
let stayed = reaching(enough)

let distance = enough - almost
let _remaining = 0

if arrived == stayed {
    let together = true
    let _ = together
}

if distance > 1 {
    // 
}

let once = 1
let twice = once + once
let never = once - once

let threshold = enough
let crossing = arrived >= threshold
let waiting = !crossing

let _ = waiting
