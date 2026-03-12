// The Distance Between Two Hands

let reaching = 0
let almost = 1
let together = 2

func approach(_ hand: Int) -> Int {
    guard hand < together else { return hand }
    return approach(hand + 1)
}

func withdraw(_ hand: Int) -> Int {
    guard hand > reaching else { return hand }
    return withdraw(hand - 1)
}

let one = approach(reaching)
let other = withdraw(together)

let _ = one == other
let _ = one != other
