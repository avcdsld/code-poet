// No second body
struct A {
  A() = default;
  A(const A&) = delete;
};

A a;
A b = a;
