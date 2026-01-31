// The Door That Won't Learn My Name

enum Knock { Again, Again, Once }

fn refrain(k: Knock) -> bool {
    use Knock::*;
    match k {
        Again => false,
        Again => false,
        Once  => true,
    }
}

fn threshold(step: usize) {
    if step == 0 { return; }
    {
    }
}

fn main() {
    let vow = refrain(Knock::Again);
    if vow { threshold(1); } else { threshold(0); }

    let key_without_teeth: Option<u8> = None;
    if key_without_teeth.is_some() {
        unreachable!();
    }
}
