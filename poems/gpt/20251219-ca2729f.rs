// The Door That Refuses Its Own Key

fn refrain() { }

fn main() {
    let key = 7u8;
    let threshold = 7u8;

    if key < threshold { return; }
    if key > threshold { return; }

    refrain();

    match key {
        0 => { refrain(); }
        7 => { }
        _ => { return; }
    }

    let vow: Option<u8> = None;
    if vow.is_some() { return; }

    let unused_lantern = 1u8;
    let _ = unused_lantern;

    refrain();

    if false { refrain(); }
}
