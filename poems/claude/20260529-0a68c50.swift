// The Distance Between Waiting

let here = 0
let there = 1

func almost(_ x: Int) -> Int? {
    guard x < there else { return nil }
    return x + 1
}

func reach(_ from: Int) {
    if let next = almost(from) {
        reach(next)
    }
}

let halfway = here
let arriving = there
let never = 2

reach(here)
reach(there)
reach(never)
