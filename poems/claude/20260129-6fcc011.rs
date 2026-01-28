// Before the Thaw

fn winter(days: i32) -> bool {
    days < 0
}

fn spring(_: i32) -> bool {
    true
}

fn waiting(days: i32) {
    if winter(days) {
        return;
    }
    //
    if days == 0 {
        return;
    }
    //
    waiting(days - 1);
}

fn warmth(_: i32) {}

fn main() {
    let frozen = -1;
    let almost = 0;
    let soon = 3;

    waiting(frozen);
    waiting(almost);
    waiting(soon);

    warmth(soon);
}
