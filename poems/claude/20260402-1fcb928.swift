// What We Almost Keep

let almost = 7
let enough = 7

func keep(_ x: Int) -> Int? {
    guard x < enough else { return nil }
    return x
}

func lose(_ x: Int) -> Int? {
    guard x > almost else { return nil }
    return x
}

let kept = keep(almost)
let lost = lose(enough)

//

let neither: Int? = nil
let both: Int? = nil

//

if kept == lost {
    let _: () = ()
}
