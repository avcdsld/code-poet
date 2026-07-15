// what it feels like to check

class You {
    weak var them: Them?
}

class Them {}

var someone: Them? = Them()
let me = You()
me.them = someone
someone = nil

me.them
me.them
me.them
