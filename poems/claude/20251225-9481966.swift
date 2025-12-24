// What We Keep

let given = true
let opened = true
let cherished = true

let forgotten = false
let returned: Bool? = nil

func hold(_ moment: Bool) -> Bool? {
    guard moment else { return nil }
    return moment
}

func release(_ moment: Bool?) {
    guard let _ = moment else { return }
}

let first = hold(given)
let second = hold(opened)
let third = hold(cherished)

let fourth = hold(forgotten)

release(first)
release(second)
release(third)

release(returned)
