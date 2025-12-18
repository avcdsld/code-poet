// Between Arrivals

let waiting = true
let arriving = false

func stay() -> Bool {
    guard waiting else { return arriving }
    guard !arriving else { return waiting }
    return stay()
}

func leave() {}

let threshold = 0
let distance = 1
let distance_still = 1

if distance == threshold {
    leave()
}

if distance_still == threshold {
    leave()
}

let _ = waiting && !arriving
let _ = waiting && !arriving
let _ = waiting && !arriving
