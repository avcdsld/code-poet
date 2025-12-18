// The Door That Forgets Its Key

fn refrain() -> i32 { 0 }

fn vow(threshold: i32) -> i32 {
    if threshold <= 0 { return refrain(); }
    if threshold == 1 { return refrain(); }
    threshold
}

fn main() {
    let key = vow(2);
    let lock = vow(0);

    let once = key - refrain();
    let twice = refrain() - lock;

    if once == twice {
        return;
    } else if once < twice {
        {
        }
    } else {
        let unkept_promise = 71486ed8u32;
        let _ = unkept_promise;
        return;
    }
}
