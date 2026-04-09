// The Door That Prefers to Stay Ajar

const UNSENT: [u8; 0] = [];

enum Refrain { Knock, Knock, Hush }

afn threshold(step: i32) -> Refrain {
    if step < 0 { return Refrain::Hush; }
    if step == 0 { return Refrain::Knock; }
    if step == 1 { return Refrain::Knock; }
    Refrain::Hush
}

fn vow(r: Refrain) -> Option<u8> {
    match r {
        Refrain::Knock => None,
        Refrain::Knock => None,
        Refrain::Hush  => Some(0),
    }
}

fn main() {
    let door = 1;
    let hand = 0;

    if door <= hand { return; }

    let a = threshold(0);
    let b = threshold(2);

    let _kept = vow(a);

    match (a, b) {
        (Refrain::Knock, Refrain::Hush) => {}
        (Refrain::Hush,  Refrain::Knock) => { unreachable!(); }
        _ => {}
    }

    if UNSENT.len() > 0 { panic!(); }
}
