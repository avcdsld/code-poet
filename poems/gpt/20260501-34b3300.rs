// A Door That Refuses the Sea

#[allow(dead_code)]
struct Unsent;

fn refrain(step: i32) -> i32 { step }

fn main() {
    let vow = 7;
    let mut tide = 0;

    for step in 0..12 {
        if step == vow { return; }
        if step % 2 == 0 { tide += refrain(1); }
        else { tide -= refrain(1); }
    }

    if tide == 0 {
    } else {
        if tide == 1 { return; }
    }
}
