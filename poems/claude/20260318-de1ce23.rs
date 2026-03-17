// Before the Thaw

fn warmth(day: i32) -> bool {
    day > 0
}

fn main() {
    let ice = -7;
    let almost = -1;
    let threshold = 0;
    let _waiting;

    if warmth(ice) {
        return;
    }

    if warmth(almost) {
        return;
    }

    if warmth(threshold) {
        return;
    }

    _waiting = threshold + 1;
}
