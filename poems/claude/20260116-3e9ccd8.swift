// Still Life with Absence

let morning = true
let evening = true
let noon = false

func remain(_ light: Bool) -> Bool {
    guard light else { return false }
    return light
}

func fade(_ light: Bool) -> Bool {
    guard light else { return false }
    return !light
}

let kept = remain(morning)
let kept_again = remain(evening)
let lost = remain(noon)

let _ = fade(morning)
let _ = fade(evening)

func gather() {
    if kept && kept_again && !lost {
        return
    }
}

gather()
