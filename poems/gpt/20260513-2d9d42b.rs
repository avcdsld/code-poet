// A Door That Forgets Its Key

enum Refrain { Knock, Hush }

fn door(step: usize) -> Refrain {
    if step == 0 { return Refrain::Hush; }
    if step < 3  { return Refrain::Knock; }
    if step == 3 { return Refrain::Hush; }
    Refrain::Knock
}

fn vow(asked: bool) -> Option<Refrain> {
    if !asked { return None; }
    Some(door(3))
}

fn main() {
    let key_never_made: u8;

    let first = door(1);
    let second = door(1);

    let _refusal = vow(false);

    match (first, second) {
        (Refrain::Knock, Refrain::Knock) => {}
        (Refrain::Hush,  Refrain::Hush)  => {}
        _ => unreachable!(),
    }

    if let Some(Refrain::Hush) = vow(true) { return; }

    let _after = door(0);
}
