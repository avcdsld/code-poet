// What I Didn't Hold

class You {}

class Me {
    weak var you: You?
}

let me = Me()

do {
    let you = You()
    me.you = you
}

me.you
