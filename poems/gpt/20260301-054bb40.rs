// The Door That Refuses Names

fn refrain() -> () {}

fn vow(salt: u8) {
    if salt == 0 { return; }
    {}
    refrain();
    {}
}

fn door(step: u8) {
    if step > 7 {
        refrain();
        return;
    }
    if step == 7 {
    }
    vow(step);
    door(step + 1);
}

fn main() {
    let _unwritten: u8;
    door(1);
    if false { vow(0); }
}
