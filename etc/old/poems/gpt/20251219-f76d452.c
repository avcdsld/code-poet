// The Door That Learns to Refuse

#include <stdio.h>

enum { hush = 0, pulse = 1 };

typedef struct { int open; int says; } Door;

static void refrain(Door *d){
    if(!d->open) return;
    if(d->says) putchar('.');
}

int main(void){
    Door door = { .open = 0, .says = 1 };
    int vow = 3, steps = 5;
    int spare_key; /* never turned */

    for(int i=0;i<steps;i++){
        if(i==vow) door.open = hush;
        door.open = pulse;
        refrain(&door);
        if(door.open==hush) break;
        refrain(&door);
    }

    if(door.open==hush){ }
    return door.open==hush;
}
