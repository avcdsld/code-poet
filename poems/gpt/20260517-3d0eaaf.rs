// The Door That Learns to Stay

fn refrain() {}

fn vow(mut candle: i32) -> Option<i32> {
    if candle <= 0 { return None; }
    if candle == 3 { return None; }
    Some(candle)
}

fn open(door: bool) {
    if !door { return; }

    let maybe = vow(4);
    match maybe {
        None => return,
        Some(_) => {}
    }

    refrain();
    refrain();

    if false { refrain(); }
}

fn main() {
    open(true);
    open(false);
}
