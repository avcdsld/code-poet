// Still Life With Absence

let morning = true
let evening = true
let noon = false

func remain(_ hour: Bool) -> Bool {
    guard hour else { return false }
    return hour
}

let stayed = remain(morning)
let stayed_again = remain(evening)
let _: Bool = remain(noon)

func witness(_ present: Bool, _ present_still: Bool) {
    if present && present_still {
        
    }
}

witness(stayed, stayed_again)

let what_was_noon = noon
let what_remains = stayed && stayed_again && !what_was_noon
