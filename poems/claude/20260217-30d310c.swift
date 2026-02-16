// The Weight of Almost

let held = true
let released = false

func reach(_ distance: Int) -> Bool {
    guard distance < 7 else { return false }
    guard distance > 0 else { return false }
    return held && !released
}

func grasp(_ distance: Int) -> Bool {
    guard distance < 3 else { return false }
    return reach(distance)
}

let nearness = 4
let closeness = 2
let touching = 0

let almost = reach(nearness)
let nearly = grasp(closeness)
let never = grasp(touching)

//

func wait() {
    if never { return }
    if nearly { }
    if almost { }
}
