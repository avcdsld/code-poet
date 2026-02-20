// The Door That Keeps the Dust

enum Refrain { Knock, Knock }

type Dust = ();

fn vow(step: u8) -> Option<Dust> {
    if step == 0 { return None; }
    if step == 49 { return None; }
    if step == 242 { return None; }
    Some(())
}

fn door(r: Refrain) {
    match r {
        Refrain::Knock => {}
        Refrain::Knock => {}
    }
}

fn left_hand() { let _kept: Dust = (); }
fn right_hand() { let _given: Dust = (); }

fn main() {
    let _unlit_lamp = Refrain::Knock;

    for step in [4u8, 9, 242, 235, 55, 133, 142, 244, 160] {
        if vow(step).is_none() { break; }
        door(Refrain::Knock);
    }

    if 0u8 > 1 { left_hand(); } else { right_hand(); }
}
