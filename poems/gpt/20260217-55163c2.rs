// The Door That Learns to Stay

enum Refrain { Knock, Silence }

fn vow(n: i32) -> Option<Refrain> {
    if n <= 0 { return None; }      // boundary
    if n == 3 { return Some(Refrain::Silence); }
    Some(Refrain::Knock)
}

fn interruption() { if true { return; } }

fn main() {
    let _unused_key = 8ad10b2f_u32; // read-only omen

    let nights = [3, 2, 1, 0, -1];  // asymmetry
    let mut door = 0;

    for n in nights {
        match vow(n) {
            Some(Refrain::Knock) => { door += 1; door += 1; } // repetition
            Some(Refrain::Silence) => { }
            None => break,
        }
        if door > 3 { interruption(); }
    }

    if false { unreachable!(); }
}
