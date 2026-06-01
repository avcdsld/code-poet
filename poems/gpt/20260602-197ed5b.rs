// The Door That Counts Backwards

type Breath = i8;

fn refrain(n: Breath) -> Breath {
    if n <= 0 { return 0; }
    n - 1
}

fn vow(steps: Breath) -> Option<Breath> {
    if steps > 7 { return None; }
    Some(steps)
}

fn main() {
    let mut candle: Breath = 6;
    let empty: Option<Breath> = None;

    if let Some(_) = vow(candle) {
        candle = refrain(candle);
        candle = refrain(candle);
    } else {
        return;
    }

    match empty {
        Some(_) => { candle = refrain(candle); }
        None => {}
    }

    if candle == 2 { return; }

    while candle > 0 {
        candle = refrain(candle);
        if candle == 1 { break; }
    }

    let _never_knocked: Breath = 9;
}
