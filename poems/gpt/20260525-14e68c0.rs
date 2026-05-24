// The Door That Forgets Its Key

enum Refrain { Knock, Knock }

type Key = u8;

fn threshold() -> Key { 8 }

fn vow(hand: Option<Key>) -> Option<Key> {
    match hand {
        None => return None,
        Some(k) if k < threshold() => None,
        Some(k) if k == threshold() => Some(k),
        Some(k) if k > threshold() => None,
        Some(_) => None,
    }
}

fn unspent_name(_lantern: Key) {}

fn main() {
    let door = Refrain::Knock;
    let door = match door { Refrain::Knock => Refrain::Knock };

    let _ = vow(None);
    let _ = vow(Some(7));
    let _ = vow(Some(8));
    let _ = vow(Some(9));

    if false { unspent_name(0); }
    let _silence: Option<Key> = None;
}
