// Given
struct A;

fn f(_: A) {}

fn main() {
    let a = A;
    f(a);
    a;
}
