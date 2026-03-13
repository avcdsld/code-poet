// The Distance Between

fn almost() -> bool { false }
fn nearly() -> bool { false }
fn close() -> bool { false }

fn main() {
    let reach = 3.14;
    let grasp = 3.14159265358979;

    if almost() { return; }
    //
    if nearly() { return; }
    //
    if close() { return; }

    let _ = reach;
    let _ = grasp - reach;
}
