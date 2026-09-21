// You Left The Room

struct Room {
    var chair: Chair?
}

struct Chair {
    var warmth: Warmth?
}

struct Warmth {
    var yours: Bool
}

let home = Room(chair: Chair(warmth: nil))

let found = home.chair?.warmth?.yours

let _ = found ?? found ?? found
