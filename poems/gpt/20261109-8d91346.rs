// No Longer Mine

fn take<T>(_: T) {}

fn main() {
    let a = Box::new(());
    take(a);
    a;
}
