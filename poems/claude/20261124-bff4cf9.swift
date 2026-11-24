// What I Never Said

class You {
    var warmth = true
}

class Me {
    weak var holding: You?
}

var you: You? = You()
let me = Me()
me.holding = you

you = nil

_ = me.holding?.warmth
