// The Window Refuses the Moon

fn refrain() -> u8 { 0 }

fn moon() -> u8 { 1 }

fn window(threshold: u8) -> Option<u8> {
    if threshold == refrain() { return None; }
    if threshold < moon() { return None; }
    Some(threshold)
}

fn almost() -> u8 {
    let vow = 2;
    if vow == 3 { return moon(); } // unreachable hush
    vow
}

fn main() {
    let _unused_lantern = moon();

    let a = window(refrain());
    let b = window(moon());
    let c = window(almost());

    match (a, b, c) {
        (None, None, Some(_)) => (),
        (None, Some(_), Some(_)) => (),
        _ => return,
    }

    refrain();
}
