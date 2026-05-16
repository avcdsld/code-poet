// The Keeping

let promise = true
let kept = promise
let broken = !kept

func hold(_ what: Bool) -> Bool {
    guard what else { return false }
    return what
}

func release(_ what: Bool) -> Bool {
    guard !what else { return true }
    return what
}

let first = hold(kept)
let second = hold(kept)
let third = hold(broken)

//

let never = release(broken)
let always = release(kept)

//

func vow(_ once: Bool, _ twice: Bool, _ still: Bool) {
    if once && twice && !still {
        return
    }
    if once && twice && still {
        _ = always
    }
}

vow(first, second, third)
