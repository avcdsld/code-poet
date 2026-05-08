// The Distance Between Almost

let almost = 0.999999999
let enough = 1.0

func reach(_ step: Double) -> Double {
    step + (enough - step) / 2
}

var here = almost

while here < enough {
    here = reach(here)
    if here == enough { break }
}

let there = here
let arrived: Bool = there >= enough
let _ = arrived
