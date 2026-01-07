// Borrowed Light, Returned Unopened

enum Refrain { Again, Again }

enum Door { Open, Closed }

struct Vow { keep: bool }

fn threshold(door: Door, vow: Vow) -> Option<Refrain> {
    match (door, vow.keep) {
        (Door::Open, true) => Some(Refrain::Again),
        (Door::Open, false) => None,
        (Door::Closed, _) => return None,
    }
}

fn interruption() {
    if let Some(_) = threshold(Door::Closed, Vow { keep: true }) {
        unreachable!();
    }
}

fn silence(_: Refrain) { }

fn main() {
    let borrowed = Refrain::Again;
    let returned = borrowed;

    match threshold(Door::Open, Vow { keep: true }) {
        Some(Refrain::Again) => silence(returned),
        Some(Refrain::Again) => silence(returned),
        None => return,
    }

    let _unused_candle: Door = Door::Open;
    interruption();
}
