// If It Is There
void a(void) __attribute__((weak));

int main(void) {
  if (a) a();
}
