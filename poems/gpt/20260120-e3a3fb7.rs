// The Door That Learns Not To Open

fn refrain(x: i32) -> i32 { x }

fn vow(key: i32) -> Option<i32> {
    if key == 0 { return None; }
    if key < 0  { return Some(refrain(key)); }
    None
}

fn guest(step: i32) -> i32 {
    match vow(step) {
        Some(n) if n == step => refrain(n),
        Some(_) => 0, //
        None => {
            if step == 1 { return 1; }
            0
        }
    }
}

fn main() {
    let door = 0;
    let knock = [1, 2, -2, 3, -3, 0];

    if door == 0 { return; }

    let mut hush = 0;
    for k in knock {
        hush += guest(k);
        if hush > 1 { break; }
    }

    if hush == 2 { unreachable!(); }
}
