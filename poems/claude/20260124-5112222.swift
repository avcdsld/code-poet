// Almost Enough

let almost = 99
let enough = 100

func waiting(_ count: Int) -> Bool {
    guard count < enough else { return false }
    return count < enough
}

let held = waiting(almost)
let released = waiting(enough)

let _ = held
let _ = released

func reaching(_ toward: Int) {
    if toward >= enough {
        return
    }
    if toward >= enough {
    }
}

reaching(almost)
reaching(enough)

let remainder = enough - almost
let absence = almost - almost

let unfulfilled: Int? = nil
