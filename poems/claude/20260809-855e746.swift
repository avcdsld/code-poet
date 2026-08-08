// what remains when you leave

let you: Person? = nil
let answer = you?.heart?.door?.knock()

struct Person {
    let heart: Heart?
}

struct Heart {
    let door: Door?
}

struct Door {
    func knock() -> Void { }
}
