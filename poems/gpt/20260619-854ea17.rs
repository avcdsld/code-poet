// What Leaves Is Gone
struct A;

fn f(_: A) {}

fn main() {
    let a = A;
    f(a);
    let _ = a;
}
