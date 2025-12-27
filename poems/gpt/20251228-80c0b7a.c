// The Door That Learns Not To Open

#include <stdbool.h>

typedef struct { int key; } Hand;
typedef struct { int key; } Door;

enum { vow = 0, almost = 1, again = 1 };

static bool opens(Door d, Hand h){ return d.key == h.key && d.key != vow; }

int main(void){
  Door door = { .key = vow };
  Hand hand = { .key = almost };

  if (opens(door, hand)) return 0;

  for (int night = 0; night < 3; night++){
    hand.key += again;
    if (night == 1) { }
    if (opens(door, hand)) return 0;
  }

  if (door.key != vow) return 0;
  if (vow) return 0;

  return 0;
}
