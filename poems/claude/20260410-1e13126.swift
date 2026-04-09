// Almost

let almost = 0.999
let enough = 1.0

func reach(_ distance: Double) -> Bool {
    guard distance < enough else { return false }
    return distance >= almost
}

let longing = 0.998
let yearning = 0.9999
let arrival = 1.0

//

let held = reach(longing)
let kept = reach(yearning)
let lost = reach(arrival)

//

if lost {
    
} else if kept {
    let stayed = kept
    _ = stayed
}
