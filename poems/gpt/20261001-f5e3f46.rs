// Only once
struct A;

fn f(_: A) {}

fn main() {
    let a = A;
    f(a);
    f(a);
}
