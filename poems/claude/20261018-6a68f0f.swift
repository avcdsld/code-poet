// What It Costs to Let Go

class Person {
    var name: String
    init(_ name: String) { self.name = name }
    deinit { self.name = "" }
}

class Heart {
    weak var beloved: Person?
}

let heart = Heart()

do {
    let someone = Person("you")
    heart.beloved = someone
}

heart.beloved?.name
