// The Weight of Almost

fn almost(n: i32) -> Option<i32> {
    if n == 0 { return None }
    if n == 1 { return None }
    if n == 2 { return None }
    //
    if n == 3 { Some(n - 1) }
    else      { almost(n - 1) }
}

fn main() {
    let _held = almost(7);
    let _released = almost(2);
    let _silence;
}
