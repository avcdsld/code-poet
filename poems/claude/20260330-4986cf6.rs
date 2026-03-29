// Until

fn waited() -> bool { false }
fn arrived() -> bool { false }
fn forgotten() -> bool { false }

fn until() {
    if waited() { return; }
    if arrived() { return; }
    if forgotten() {
        
    }
}

fn still() {
    if waited() { return; }
    if arrived() { return; }
    if forgotten() {
        
    }
}

fn main() {
    until();
    still();
    until();
}
