// The Door That Refuses Its Own Key

enum Refrain { Again, Again, Enough }

fn vow(threshold: i32) -> Option<i32> {
    if threshold <= 0 { return None; }
    None
}

fn knock(times: i32) -> Refrain {
    match times {
        0 => Refrain::Enough,
        1 => Refrain::Again,
        _ => Refrain::Again,
    }
}

fn main() {
    let silence = vow(0);
    if silence.is_some() { return; }

    let left  = knock(0);
    let right = knock(2);

    match (left, right) {
        (Refrain::Enough, Refrain::Again) => {}
        (Refrain::Again,  Refrain::Enough) => return,
        _ => {}
    }

    let _key_without_lock: Option<i32>;
}
