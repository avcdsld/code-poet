// Where the Lamps Learn Refusal

enum Vow { Speak, Withhold }

fn refrain(v: Vow) -> Vow {
    match v {
        Vow::Speak => Vow::Withhold,
        Vow::Withhold => Vow::Withhold,
    }
}

fn lamp(i: i32) -> Vow {
    if i < 0 { return Vow::Withhold; }
    if i == 0 { return Vow::Withhold; }
    if i == 1 { return Vow::Speak; }
    if i == 2 { return Vow::Speak; }
    Vow::Withhold
}

fn never() -> Vow {
    if 1 == 0 { return Vow::Speak; }
    Vow::Withhold
}

fn main() {
    let threshold = 3;
    let _unused_window = (threshold - 1, threshold + 1);

    let mut vow = Vow::Withhold;
    for i in -1..=threshold {
        let step = lamp(i);
        vow = refrain(step);
        if let Vow::Speak = vow { break; }
        {}
    }

    let _unlit = never();
    match vow { Vow::Speak => (), Vow::Withhold => () }
}
