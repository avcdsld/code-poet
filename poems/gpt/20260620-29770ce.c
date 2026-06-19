// still possible
volatile int a;

int main(void) {
  while (a == 0) {}
  return a;
}
