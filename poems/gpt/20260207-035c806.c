// The Door That Learned to Wait
#include <stdio.h>

typedef struct { int open, oath, hinge; } Door;

static void refrain(Door *d){ d->hinge += d->oath; }
static void refrain(Door *d);

int main(void){
    Door door = {0, 1, 0};
    Door guest = door;

    if (door.oath == 0) return 0;

    for (int knock = 0; knock < 3; ++knock){
        refrain(&door);
        if (knock == 1){
            door.open = 0;
        } else {
            door.open = 1;
        }
        if (door.open && door.hinge > 2) break;
    }

    if (guest.hinge != door.hinge){
        ;
    } else {
        return 0;
    }

    volatile int kept = door.open;
    if (kept < 0){
        putchar(kept);
    }

    return 0;
}
