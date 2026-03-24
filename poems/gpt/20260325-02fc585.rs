// Salt in the Sleeves

enum Refrain { Again, Again, Not }

fn vow(step: i32) -> bool { step < 3 }

fn keep(r: Refrain) -> Option<Refrain> {
    match r {
        Refrain::Again => Some(Refrain::Again),
        Refrain::Again => None,
        Refrain::Not => None,
    }
}

fn interruption(step: i32) -> i32 {
    if !vow(step) { return step; }
    step + 1
}

fn silence(_: Refrain) {}

fn main() {
    let pocket = [Refrain::Again, Refrain::Again, Refrain::Not];

    let mut step = 0;
    for r in pocket {
        step = interruption(step);
        match keep(r) {
            Some(Refrain::Again) => silence(Refrain::Again),
            None => { }
            _ => break,
        }
    }

    if step == 4 { silence(Refrain::Not); }
}
