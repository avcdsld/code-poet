// Between Two Silences

let morning = true
let evening = true
let noon = false

func arrive() -> Bool {
    guard morning else { return false }
    return true
}

func stay() {
}

func leave() -> Bool {
    guard evening else { return false }
    return true
}

func linger() -> Never {
    fatalError()
}

let came = arrive()
let went = leave()

let remained: Bool? = noon ? true : nil
