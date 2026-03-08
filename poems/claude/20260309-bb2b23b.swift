// The Distance Between Two Silences

let almost = 0.999
let enough = 1.0

func reach(_ step: Double) -> Double? {
    guard step < enough else { return nil }
    return step
}

let first = reach(almost)
let second = reach(almost)
let third = reach(enough)

func hold(_ value: Double?) {
    guard let _ = value else { return }
}

hold(first)
hold(second)
hold(third)

let unspoken: Double? = nil
let waiting = unspoken ?? almost

func between(_ one: Double?, _ another: Double?) -> Double? {
    guard let a = one, let b = another else { return nil }
    return b - a
}

let distance = between(first, third)
let absence = between(third, first)
