// The Body Forgets

int touch() {
  static int scars = 0;
  return ++scars;
}

int main() {
  touch();
  touch();
  touch();

  return touch();
}
