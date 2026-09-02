// Held by no one
class A {}

func a() -> Bool {
    weak var b: A?
    do { let c = A(); b = c }
    return b == nil
}
