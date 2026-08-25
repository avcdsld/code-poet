// what you held onto

class Them {
    var alive = true
}

class You {
    weak var held: AnyObject?
}

let grip = You()

do {
    let them = Them()
    grip.held = them
}

let gone = grip.held
let still_gone = grip.held ?? grip.held ?? grip.held ?? grip.held
