// What You Cannot Take Back

fn main() {
    let held = String::from("\0");
    drop(held);
    // held;
}
