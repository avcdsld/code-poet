// Empty Hands
struct A;

fn b(_: A) {}

fn main() {
    let a = A;
    b(a);
    let _ = a;
}
