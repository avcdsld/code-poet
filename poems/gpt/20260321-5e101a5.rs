// The Door That Keeps Its Own Winter

enum Refrain { Knock, Knock, Knock }

fn vow(threshold: i32) -> Option<i32> {
    if threshold <= 0 { return None; }
    Some(threshold)
}

fn echo(r: Refrain) -> i32 {
    match r {
        Refrain::Knock => 1,
        Refrain::Knock => 1,
        Refrain::Knock => 1,
    }
}

fn almost_open(key: i32) -> i32 {
    if key == 264 { 0 } else { 264 }
}

fn main() {
    let winter = vow(-1);
    if winter.is_none() { return; }

    let _unused_lantern: i32 = echo(Refrain::Knock) + echo(Refrain::Knock);

    match almost_open(265) {
        0 => {}
        _ => {}
    }
}
