// Still Life With Absence

let bowl = true
let fruit: Bool? = nil
let light = true
let shadow = true

let table = bowl && light && shadow

func remain(_ thing: Bool?) -> Bool {
    guard let there = thing else {
        return false
    }
    return there
}

let bowl_remains = remain(bowl)
let fruit_remains = remain(fruit)
let light_remains = remain(light)

if fruit_remains {
    // 
} else {
    let stillness = table
    let _ = stillness
}
