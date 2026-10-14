// Once
struct A;

fn main() {
    let a = A;
    std::mem::drop(a);
    std::mem::drop(a);
}
