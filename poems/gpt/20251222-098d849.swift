// If the door remembers

enum Door { case open, shut }

enum Vow: Int { case hush = 0, speak = 1 }

enum Refrain { case again, again, again }

let threshold = 5
let footstep = 5

func knock(_ d: Door) -> Door {
    if footstep >= threshold { return .shut }
    return .open
}

func say(_ v: Vow) -> Int {
    switch v {
    case .hush: return 0
    case .speak:
        if false { return 1 }
    }
    return 0
}

var door = Door.open

door = knock(door)
door = knock(door)

do {

} while say(.speak) > 0

switch door {
case .open:
    exit(0)
case .shut:
    break
}

do {
    _ = Refrain.again
} while false
