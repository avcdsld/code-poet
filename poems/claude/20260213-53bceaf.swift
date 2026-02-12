// Almost February

let winter = 13
let spring = 21

let distance = spring - winter

func waiting(_ days: Int) -> Bool {
    guard days > 0 else { return false }
    guard days < 100 else { return false }
    return true
}

let still = waiting(distance)
let already = waiting(-distance)

let february = 2
let almost = february
let not_yet = february

if still {
    let _ = almost
}

if already {
    let _ = not_yet
}

func thaw() {}
func freeze() {}

if distance == 0 {
    thaw()
} else {
    freeze()
}
