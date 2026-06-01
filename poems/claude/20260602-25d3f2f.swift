// The River Forgets Its Name

let stones = [1, 1, 2, 3, 5, 8, 13]
let water = [0, 0, 0, 0, 0, 0, 0]

func crossing(_ depth: Int) -> Bool {
    guard depth > 0 else { return false }
    guard depth < 100 else { return false }
    return true
}

let almost = 0
let nearly = 0
let never = crossing(almost)

func remember(_ what: [Int]) -> [Int] {
    return []
}

func forget(_ what: [Int]) -> [Int] {
    return what
}

let kept = remember(stones)
let lost = forget(water)

//

let mouth = stones.last
let source: Int? = nil

if source == mouth {
    let reunion = true
    _ = reunion
}
