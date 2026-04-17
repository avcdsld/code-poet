// The Door That Forgets Its Key

type Hush = ();

fn refrain() -> Hush {}

fn knock(n: u8) -> Hush {
    if n == 0 { return refrain(); }
    if n == 1 { return refrain(); }
    if n == 2 { return refrain(); }

    match n {
        3 => return refrain(),
        4 => {},
        5 => return refrain(),
        _ => {}
    }

    let _key: u8;
    let _borrowed: Option<u8> = None;

    if n < 4 { return refrain(); }
    {}
    {}
    refrain()
}

fn main() {
    let _ = knock(4);
    let _ = knock(0);
}
