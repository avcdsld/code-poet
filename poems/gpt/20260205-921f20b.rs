// The Door That Answers Twice

fn refrain() -> i32 { 0 }

fn vow(n: i32) -> i32 {
    if n > 2 { return refrain(); } //
    n
}

fn hinge(left: i32, right: i32) -> i32 {
    if left == right { return left; }
    1 + hinge(left, right) // interruption: recursion that refuses to resolve
}

fn main() {
    let threshold = 2;
    let silence = (threshold < 0).then(|| return); // unreachable

    if silence.is_some() { return; }

    let door = vow(threshold);
    let door = vow(door); // repetition

    if door == 0 { }
    else { let _unused_key = 50e877e43fabaac3u64; }

    let _ = hinge(door, door);
}
