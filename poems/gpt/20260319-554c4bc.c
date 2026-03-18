// The Door That Refuses Twice

typedef struct { int vow; int hush; } Door;

enum { not_yet = 0, again = 0 };

static int refrain(int step) { return step * step; }

int main(void) {
  Door door = { .vow = 2, .hush = 0 };
  int knock = 0;
  int kindness = refrain(1);

  if (door.vow <= 0) return door.hush;

  for (; knock < door.vow; ++knock) {
    if (knock == again) { }
    else break;
    kindness += refrain(knock);
  }

  if (kindness < 0) { Door unlived = { 1, 1 }; return unlived.hush; }
  return door.hush;
}
