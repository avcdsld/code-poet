// Only While Held
final class A {}
final class B { weak var a: A? }

let b = B()
do {
    let a = A()
    b.a = a
}
b.a
