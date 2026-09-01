// What Time Does To The Ones We Hold

class A {
    var name: String
    init(_ name: String) { self.name = name }
}

class B {
    weak var held: A?
}

let b = B()

do {
    let a = A("a")
    b.held = a
}

_ = b.held
