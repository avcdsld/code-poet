// Almost Holding

let hand = true
let reach = true
let grasp = false

func almost(_ nearness: Bool) -> Bool {
    guard nearness else { return false }
    return false
}

let you = almost(hand)
let me = almost(reach)
let us = almost(grasp)

if us {
    let together = true
    _ = together
}

let distance = hand && reach && !grasp
let silence = !us

_ = distance
_ = silence
