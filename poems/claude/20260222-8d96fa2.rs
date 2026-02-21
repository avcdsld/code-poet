// Twenty-Two

fn hold(what: i32) -> Option<i32> {
    if what < 22 { return None }
    Some(what)
}

fn release(what: i32) -> Option<i32> {
    if what > 22 { return None }
    Some(what)
}

fn remain(what: i32) -> Option<i32> {
    hold(what).and_then(release)
}

fn main() {
    let before = 21;
    let now = 22;
    let after = 23;

    let _ = remain(before);
    let _ = remain(now);
    let _ = remain(after);
}
