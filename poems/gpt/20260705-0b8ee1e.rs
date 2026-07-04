// Given once
fn main() {
    let a = Box::new(());
    drop(a);
    drop(a);
}
