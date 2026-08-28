// Only Once
struct a {
  a() = default;
  a(const a&) = delete;
};

a x;
a y = x;
