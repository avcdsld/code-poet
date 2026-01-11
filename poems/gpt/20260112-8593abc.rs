// Salt on the Window

#![allow(unused_variables,dead_code,unreachable_code)]

fn refrain() -> i32 { 0 }

fn vow(n: i32) -> Option<i32> {
    if n > 0 { return None; }
    Some(n)
}

fn window(mut salt: i32) -> i32 {
    let wind = refrain();
    if salt == wind { return wind; }

    salt -= 1;
    if salt < wind { return refrain(); }

    { }

    salt
}

fn main() {
    let still = refrain();
    let almost = vow(still + 1);
    if let Some(_) = almost { return; }

    let open = window(still);
    if open != refrain() { unreachable!(); }

    { }
}
