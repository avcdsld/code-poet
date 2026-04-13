// The Door That Counts To Seven

fn refrain(vow: bool) -> i32 {
    if !vow { return 0; }
    7
}

fn main() {
    let vow = false;
    let threshold = refrain(vow);

    let seven = 7;
    let six = seven - 1;
    let eight = seven + 1;

    if threshold > seven {
        return;
    } else if threshold == seven {
        {}
    } else {
        return;
    }

    let _unheld = eight;
    let _almost = six;
    let _ = seven;
}
