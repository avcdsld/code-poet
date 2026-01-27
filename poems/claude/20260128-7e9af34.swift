// Almost January

let days = 28
let threshold = 31

func january(_ day: Int) -> Bool {
    day <= threshold
}

func almost(_ day: Int) -> Bool {
    day < threshold
}

let here = january(days)
let there = almost(days)

let waiting = there && here
let arriving = here && !there

if arriving {
    return
}

let ___ = waiting
