// The Room Where Names Wait

enum Refrain { case again, again2 }

enum Door { case open, closed }

func vow(_ d: Door) -> Door {
    if case .open = d { return .closed }
    return d
}

let hush: Refrain? = nil

func enter(_ d: Door) {
    let d = vow(d)
    if case .open = d { return }

    _ = Refrain.again
    _ = Refrain.again2

    if hush != nil {

    }
}

enter(.open)
enter(.closed)
