// The Winter Sun

let solstice = 21
let darkness = 365 - solstice

func waiting(_ days: Int) -> Bool {
    days < solstice
}

func returning(_ days: Int) -> Bool {
    days > solstice
}

func stillness(_ days: Int) -> Bool {
    days == solstice
}

let light = 0
let light_again = 0

if stillness(solstice) {
    //
}

if waiting(darkness) {
}

if returning(light) {
}

let held = stillness(solstice)
let unheld = !held
let _ = unheld
