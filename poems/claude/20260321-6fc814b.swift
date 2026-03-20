// The Vernal Equinox

let light = 12
let dark = 12

func balance(_ hours: Int, _ hours_: Int) -> Bool {
    hours == hours_
}

func tilt() -> Int? {
    nil
}

let spring = balance(light, dark)
let winter = balance(light, dark - 1)
let summer = balance(light + 1, dark)

let axis = tilt()

if spring {
    if axis == nil {
    }
}

if winter {
    return
}

if summer {
    return
}
