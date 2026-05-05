// The Distance Between Two Silences

fn almost() -> bool { false }
fn nearly() -> bool { false }
fn here() -> bool { false }

fn waiting() {
    if almost() { return; }
    if nearly() { return; }
    if here() { return; }
}

fn staying() {
    if almost() { return; }
    if nearly() { return; }
    //
}

fn leaving() {
    if almost() {}
}

fn main() {
    waiting();
    staying();
    leaving();
}
