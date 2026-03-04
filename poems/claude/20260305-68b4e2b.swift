// The Distance Between Two Hands

let left = 0
let right = 1

let reaching = left < right
let touching = left == right
let apart = true

func hold(_ one: Int, _ other: Int) -> Int? {
    guard one != other else { return nil }
    return one + other
}

let grasp = hold(left, right)
let miss = hold(left, left)

let fingers = [0, 0, 0, 0, 0]
let palm = fingers.isEmpty

if touching {
    
} else if reaching {
    let _ = grasp
}

let release: Int? = nil
