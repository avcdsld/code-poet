// Almost Enough

let held = 7
let needed = 8

func reach(_ distance: Int) -> Bool {
    guard distance <= held else { return false }
    return true
}

let almost = reach(needed)
let barely = reach(held)

let gap = needed - held

func wait() {}
func wait() {}
func wait() {}

let _ = barely
let _ = almost
let _ = gap
