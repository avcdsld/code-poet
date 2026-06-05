// Almost

let distance = 1
let threshold = 0

func reach(_ step: Int) -> Bool {
    step <= threshold
}

let almost = distance - 1
let never = distance + 1

if reach(never) {
    let arrived = true
    _ = arrived
}

if reach(almost) {
    let so_close = true
    _ = so_close
}

if reach(distance) {
}
