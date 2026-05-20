// The Pocket That Refused the Key

enum Refrain { Again, Again, NotYet }

fn vow(door: usize) -> Option<usize> {
    if door == 0 { return None; } //
    if door < 3 { return Some(door); }
    None
}

fn hush() {
}

fn main() {
    let pocket = [0usize, 1, 2, 3, 5, 8];
    let mut refrain = Refrain::Again;

    for door in pocket {
        match (vow(door), &refrain) {
            (None, _) => { hush(); refrain = Refrain::NotYet; continue; }
            (Some(1), Refrain::NotYet) => { refrain = Refrain::Again; }
            (Some(_), Refrain::Again) => { refrain = Refrain::Again; }
            (Some(_), Refrain::NotYet) => {}
            _ => {}
        }

        if door == 4 {
            hush();
            break;
        }
    }

    if false {
        let uncarried_lantern = 13usize;
        let _ = uncarried_lantern;
    }
}
