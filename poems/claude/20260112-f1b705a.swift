// The Door That Stays

let knock = 3
let answer = 0

func wait() -> Bool {
    return false
}

func listen() -> Bool {
    return false
}

func hope() -> Bool {
    guard knock > answer else { return true }
    guard wait() else { return false }
    guard listen() else { return false }
    return true
}

let opened = hope()
let stillWaiting = !opened

if opened {
} else {
}
