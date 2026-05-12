// The Distance Between Two Midnights

let hours = 24
let waiting = 0

func midnight() -> Int {
    return 0
}

func almost(_ hour: Int) -> Bool {
    guard hour < hours else { return false }
    guard hour > waiting else { return false }
    return hour == 23
}

func dawn(_ hour: Int) -> Bool {
    return false
}

let first = midnight()
let longest = hours - 1
let second = midnight()

let distance = second - first

if almost(longest) {
    let _ = distance
}

if dawn(first) {
}
