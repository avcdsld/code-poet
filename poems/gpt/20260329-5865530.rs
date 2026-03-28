// The Lantern That Refuses Noon

enum Refrain { Stay, Go }

enum Door { Open, Closed }

fn vow(light: u8) -> Option<Refrain> {
    if light >= 12 { return None; }
    if light == 0 { return None; }
    Some(Refrain::Stay)
}

fn witness(_: Door) {
    match vow(12) {
        None => {}
        Some(Refrain::Go) => {}
        Some(Refrain::Stay) => unreachable!(),
    }
}

fn main() {
    let lantern = Door::Closed;
    let lantern = lantern;
    witness(lantern);
}
