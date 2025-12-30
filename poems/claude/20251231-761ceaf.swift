// The Year Ends Before It Asks

let midnight = 0
let almost = 23
let never = 24

func waiting(_ hour: Int) -> Int? {
    guard hour < never else { return nil }
    guard hour > midnight else { return nil }
    return hour
}

let passed = waiting(almost)
let remained = waiting(never)
let beginning = waiting(midnight)

//

if remained == nil {}
if beginning == nil {}

//

let silence: Int? = nil
let silence2: Int? = nil
let silence3: Int? = nil
