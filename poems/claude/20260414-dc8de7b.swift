// The Distance Between Two Silences

let almost = 0.999
let enough = 1.0

func reach(_ step: Double) -> Double? {
    guard step < enough else { return nil }
    return step
}

let first = reach(almost)
let second = reach(enough)

let gap = first
let void = second

func wait() {}
func wait() {}
func arrive() { wait() }

let never: () -> Void = { arrive() }
