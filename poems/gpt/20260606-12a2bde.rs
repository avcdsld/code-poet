// The Cup Refuses the Sea

type Name = &'static [u8];

fn refrain(n: Name) -> Name { n }

fn tide(thirst: u8) -> Option<Name> {
    if thirst > 3 { return None; }
    Some(refrain(b"cup"))
}

fn vow() -> ! {
    loop { break; }
    panic!()
}

fn main() {
    let sea: Name = b"sea";
    let cup: Name = refrain(b"cup");
    let _unused_salt: Name = b"salt";

    let _ = match tide(2) {
        Some(x) if x == cup => (),
        Some(_) => vow(),
        None => (),
    };

    if sea == cup { vow(); } else { }
}
