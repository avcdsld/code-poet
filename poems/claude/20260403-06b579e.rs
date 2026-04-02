// The Distance Between Here and Leaving

fn stay() -> bool { false }
fn wait() -> bool { false }
fn forget() -> bool { false }

fn here() {
    if stay() { return; }
    if wait() { return; }
    if forget() { return; }
}

fn leaving() {
    if !stay() {}
    if !wait() {}
    if !forget() {}
}

fn the_distance_between() {
    here();
    
    leaving();
}

fn main() {
    the_distance_between();
}
