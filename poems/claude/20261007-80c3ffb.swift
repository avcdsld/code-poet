// What Remains

let you: Person? = nil

let warmth = you?.hands?.warmth
let voice = you?.mouth?.words
let plans = you?.future?.ours

struct Person {
    var hands: Hands?
    var mouth: Mouth?
    var future: Future?
}

struct Hands { var warmth: String? }
struct Mouth { var words: String? }
struct Future { var ours: String? }
