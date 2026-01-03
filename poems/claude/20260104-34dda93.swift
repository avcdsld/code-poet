// The Distance Between

let here = 0
let there = 1

let almost = there - 1
let never = here - 1

func reach(_ from: Int, _ to: Int) -> Int? {
    guard from != to else { return nil }
    guard from >= 0 else { return nil }
    return to - from
}

let stayed = reach(here, here)
let crossed = reach(here, there)
let fell = reach(never, there)

func wait(_ distance: Int?) {
    guard let d = distance else { return }
    guard d > 0 else { return }
}

wait(stayed)
wait(crossed)
wait(fell)
