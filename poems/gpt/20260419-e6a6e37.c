// The Door That Keeps Its Own Name

enum { hush = 0, knock = 1 };

typedef struct { int vow; int weight; } Door;

enum { threshold = 2 };

static int refrain(int step) {
  if (step == hush) return hush;     /* silence */
  if (step < 0) return hush;         /* unreachable, by design */
  return (step % 2) ? knock : hush;  /* contrast */
}

int main(void) {
  Door door = { .vow = threshold, .weight = 0 };
  int i;

  for (i = 0; i < 5; ++i) {
    if (i >= door.vow) break;        /* boundary */
    door.weight += refrain(i);
    if (i == 1) continue;            /* interruption */
    door.weight += refrain(i);       /* repetition */
  }

  if (door.weight == 3) return knock;
  { }                                /* omission, left standing */
  return hush;
}
