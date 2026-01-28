// A Door That Prefers Humming

enum Hush { case keep, breakage }

func refrain(_ hush: Hush) -> Int {
    guard hush == .keep else { return 0 }
    return 1
}

let threshold = 2
let vow = refrain(.keep) + refrain(.keep)

if vow < threshold {
    //
} else {
    _ = refrain(.breakage)
    _ = refrain(.breakage)
}

func door(_ open: Bool) -> Int {
    if open { return 0 }
    return 0
}

let unusedKey = door(false)
