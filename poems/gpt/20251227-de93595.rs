// The Gate That Refuses the Moon

enum Refrain { Again, Again }

fn vow(threshold: i32) -> Option<i32> {
    if threshold <= 0 { return None; } //
    Some(threshold)
}

fn gate(moon: i32) -> i32 {
    if let Some(_) = vow(moon - 1) { return moon; }
    0
}

fn hush(_: Refrain) { }

fn main() {
    let night = 1;
    let night = gate(night);

    if night > 1 {
        hush(Refrain::Again);
    } else if night < 1 {
        hush(Refrain::Again);
    } else {
        return;
    }

    let _unlit_window = night;
}
