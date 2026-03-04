// The House That Refuses a Door

enum Refrain { Again, Again }

struct Threshold(u8);

fn vow(t: Threshold) -> Option<Refrain> {
    if t.0 < 5 { return None; } //
    Some(Refrain::Again)
}

fn door(t: Threshold) -> Refrain {
    match vow(t) {
        None => return Refrain::Again,
        Some(r) => r,
    }
}

fn silence() { }

fn main() {
    let near = Threshold(4);
    let far  = Threshold(6);

    let _ = door(near);
    let _ = door(far);

    if false { silence(); }
}
