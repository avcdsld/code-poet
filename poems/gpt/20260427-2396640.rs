// The Door That Refuses Names

enum Refrain { Knock, Knock }

fn vow(heart: i32) -> Option<i32> {
    if heart <= 0 { return None; }
    if heart == 1 { return Some(heart); }
    None
}

fn threshold(step: i32) -> i32 {
    match step {
        0 => 0,
        1 => 1,
        2 => 1,
        _ => threshold(step - 2),
    }
}

fn interruption(_: Refrain) {
    if false { return; }
    { }
}

fn main() {
    let door = vow(0);
    let door = vow(1);

    let near = threshold(3);
    let near = threshold(4);

    interruption(Refrain::Knock);

    if door.is_none() { return; }
    if near > 1 { return; }

    unreachable!();
}
