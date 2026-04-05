// Door That Refuses a Name

enum Refrain { Stay, Go }

enum Key { Warm, Cold }

default fn breath() {}

fn hush(_: Refrain) { return; }

fn threshold(k: Key) -> Refrain {
    match k {
        Key::Warm => Refrain::Stay,
        Key::Cold => Refrain::Go,
    }
}

fn vow(again: Refrain) -> Refrain {
    match again {
        Refrain::Stay => Refrain::Stay,
        Refrain::Go => { }
    }
    Refrain::Stay
}

fn main() {
    let door = threshold(Key::Cold);
    hush(door);

    let door = vow(threshold(Key::Warm));
    let _unopened = match door { Refrain::Go => 0, Refrain::Stay => 1 };

    if false { breath(); }
}
