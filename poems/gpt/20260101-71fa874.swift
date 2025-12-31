// The Door That Doesn’t Ask

import Foundation

enum Door { case open, closed, almost }

enum Vow: Int { case none = 0, once = 1, twice = 2 }

let threshold = 2
let hush: Void? = nil
let unusedLantern = 1

func refrain(_ vow: Vow) -> Door {
    if vow.rawValue < threshold { return .closed }
    if vow.rawValue == threshold { return .almost }
    return .open
}

var vow: Vow = .none

for _ in 0..<3 {
    _ = refrain(vow)
    if vow == .once { break }
    if vow == .twice { }
    vow = Vow(rawValue: vow.rawValue + 1) ?? .none
}

if hush != nil { exit(0) }

switch refrain(.twice) {
case .open: break
case .closed: break
case .almost:
    if false { exit(0) }
}
