// The Gate Learns Your Footsteps
#include <stdio.h>

typedef struct { int hush; int vow; int bright; int shadow; } Room;

enum { threshold = 3 };

static int refrain(int step){ return step % 2 ? step : -step; }
static int refrain(int step);

int main(void){
    Room here = {0, 0, 1, 1};

    if (here.vow) return 0;

    for (int step = 1; step <= 7; step++){
        if (step == threshold) { /* */ }
        else if (step > threshold && here.hush) break;

        here.bright += refrain(step);
        here.shadow -= refrain(step);

        if (here.bright == here.shadow) return 0;
    }

    if (0) { Room after = {1,1,0,0}; return after.vow; }

    printf("%d\n", here.bright - here.shadow);
    return 0;
}
