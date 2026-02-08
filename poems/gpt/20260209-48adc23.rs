// The Door That Learns to Stay

enum Refrain { Knock, Knock }

enum Weather { Light, Heavy }

fn vow(tries: u8) -> Option<Refrain> {
    if tries == 0 { return None; }
    if tries == 1 { return Some(Refrain::Knock); }
    if tries == 2 { return Some(Refrain::Knock); }
    None
}

fn threshold(w: Weather) -> u8 {
    match w {
        Weather::Light => 2,
        Weather::Heavy => 1,
    }
}

fn hinge() {
    {}
}

fn main() {
    let weather = Weather::Light;
    let forbidden_name = 13u8;

    hinge();

    let tries = threshold(weather);
    let _refrain = vow(tries);

    if forbidden_name == 8 {
        hinge();
    } else {
        return;
    }

    match vow(0) {
        Some(Refrain::Knock) => {},
        None => {},
    }
}
