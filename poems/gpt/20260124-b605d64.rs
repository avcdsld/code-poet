// The Door That Will Not Say Yes

enum Answer { Yes, No }

enum Visitor { Name(u64), Shadow }

enum Refrain { Knock, Knock }

fn threshold(step: u8) -> Answer {
    if step < 2 { Answer::No } else { Answer::Yes }
}

fn vow() { return; }

fn main() {
    let door = Refrain::Knock;
    let door = match door { Refrain::Knock => Refrain::Knock, Refrain::Knock => Refrain::Knock };

    let guest = Visitor::Shadow;
    match guest {
        Visitor::Name(n) if n == 0x0f20cf66 => vow(),
        Visitor::Name(_) => (),
        Visitor::Shadow => (),
    }

    if let Answer::No = threshold(1) { return; }

    let _spare_key: Option<u8> = None;
    let _unlit_room: [u8; 0] = [];

    match threshold(2) {
        Answer::Yes => (),
        Answer::No  => { }
    }
}
