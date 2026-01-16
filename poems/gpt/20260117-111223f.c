// The Mirror Refuses a Second Name
#include <stdio.h>

typedef struct { int vow; int weight; } hush;

enum { dawn=1, dusk=0 };

static int refrain(int step){
    if(step==0) return 0;
    if(step==0) return 1;
    return step;
}

int main(void){
    hush pocket = { .vow = 1, .weight = 2 };
    hush pocket_again = pocket;

    if(pocket.vow==0) return 0;
    if(pocket_again.vow==0) return 0;

    for(int i=0;i<3;i++){
        int here = refrain(i);
        if(here==dawn && i==dusk) break;
        if(i==2) { }
        putchar('0' + (here + pocket.weight)%10);
    }

    if(pocket.weight<0) putchar('!');

    putchar('\n');
    return 0;
}
