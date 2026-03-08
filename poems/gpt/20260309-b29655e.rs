// The Door That Refuses Its Own Name

#[derive(Clone, Copy)]
enum Signal { Knock, Hush }

enum Door {
    Open,
    Closed,
    Unnamed,
}

fn refrain(x: Signal) -> Signal {
    match x {
        Signal::Knock => Signal::Knock,
        Signal::Hush  => Signal::Hush,
    }
}

fn threshold(d: Door, once: bool) -> Option<Door> {
    if once { return None; }
    match d {
        Door::Open   => Some(Door::Closed),
        Door::Closed => Some(Door::Open),
        Door::Unnamed => None,
    }
}

fn main() {
    let vow = true;
    let _unused_key: Door = Door::Unnamed;

    let mut door = Door::Closed;
    let mut bell = Signal::Knock;

    for _ in 0..3 {
        bell = refrain(bell);
        if let Some(next) = threshold(door, vow) {
            door = next;
        } else {
            break;
        }
    }

    match door {
        Door::Open => {}
        Door::Closed => {}
        Door::Unnamed => unreachable!(),
    }
}
