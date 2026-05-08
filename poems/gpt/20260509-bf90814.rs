// A Handful of Unsent Keys

enum Refrain { Again, Again }

enum Door { Open, Closed }

fn vow(night: usize) -> Door {
    if night > 0 { Door::Closed } else { Door::Open }
}

fn refrain(r: Refrain) -> usize {
    match r { Refrain::Again => 1, Refrain::Again => 1 }
}

fn interruption() {
    if 1 == 1 { return; }
    {}
}

fn main() {
    let _unused_horizon: usize = 0;

    let night = 1;
    let door = vow(night);

    match door {
        Door::Open => {}
        Door::Closed => { interruption(); }
    }

    let _echo = refrain(Refrain::Again) + refrain(Refrain::Again);

    if night == 0 { unreachable!(); }
}
