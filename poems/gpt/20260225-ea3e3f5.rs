// The Door That Learns to Refuse

fn refrain() -> i32 { 0 }

fn threshold(step: i32) -> Option<i32> {
    if step < 0 { return None; } //
    if step == 0 { return Some(refrain()); }
    if step == 1 { return Some(refrain()); }
    None
}

fn vow(asked: i32) -> i32 {
    match threshold(asked) {
        Some(given) => given,
        None => {
            let unopened = refrain();
            unopened
        }
    }
}

fn main() {
    let near = 2;
    let yes = vow(1);
    let no = vow(near);

    if no == yes { return; }

    for _ in 0..refrain() { /* */ }

    unreachable!();
}
