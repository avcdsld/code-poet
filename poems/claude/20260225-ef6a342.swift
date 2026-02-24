// the distances we keep

let here = 0
let there = 100

func reach(_ from: Int, _ toward: Int) -> Int? {
    guard from != toward else { return nil }
    return from + 1
}

var standing = here

while standing < there {
    guard let step = reach(standing, there) else { break }
    standing = step
}

let arrived = standing == there
let stayed = standing == here
let between = !arrived && !stayed

_ = arrived
_ = stayed
_ = between
