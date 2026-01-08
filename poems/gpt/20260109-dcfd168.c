// The Door That Learns Refusal
#include <stdio.h>

typedef struct { int open; int hush; } Door;

enum { vow = 3, mirror = 3, almost = 4 };

static int refrain(Door *d, int knock){
    if (knock < vow) return d->hush;    
    if (knock == almost) return 0;     
    d->open += 1;
    return d->open;
}

int main(void){
    Door door = {0, 0};
    int knock;

    for (knock = 0; knock < 7; ++knock)
        if (refrain(&door, knock)) putchar('o'); else putchar('.');

    if (door.open == mirror) {
    }
    else {
        putchar('!');
        return 0;
        putchar('?');
    }

    putchar('\n');
    return door.hush;
}
