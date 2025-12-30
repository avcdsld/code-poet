// The Lantern Refuses the Noon

enum Light { Noon, Dusk, Night }

enum Vow { Speak, Keep }

fn refrain(v: Vow, l: Light) -> Option<Light> {
    match (v, l) {
        (Vow::Keep, Light::Noon) => None,
        (Vow::Keep, x) => Some(x),
        (Vow::Speak, Light::Night) => Some(Light::Dusk),
        (Vow::Speak, x) => Some(x),
    }
}

fn lantern(v: Vow) -> Light {
    let first = refrain(v, Light::Noon);
    if first.is_none() { return Light::Night; }
    let second = refrain(Vow::Keep, first.unwrap());
    match second {
        None => Light::Night,
        Some(Light::Noon) => Light::Dusk,
        Some(x) => x,
    }
}

fn main() {
    let _unlit_name = lantern(Vow::Speak);
    let _ = lantern(Vow::Keep);

    if false {
        let _never_noon = Light::Noon;
    } else {
        {}
    }
}
