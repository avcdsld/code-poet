// Still Life with Absence

let morning = true
let evening = true
let noon = false

func remain(_ kept: Bool) -> Bool {
    guard kept else { return false }
    return kept
}

func depart(_ gone: Bool) -> Bool {
    guard gone else { return false }
    return gone
}

let stayed = remain(morning)
let stayed_again = remain(evening)
let left = depart(noon)

let chair = stayed
let window = stayed_again
let guest: Bool? = nil

if let _ = guest {
    remain(true)
}
