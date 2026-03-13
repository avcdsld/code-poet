// The Door That Learns Your Hand

#include <stdio.h>

typedef struct { int knows; int keeps; } Door;

static int knock(int n){
    if(n==0) return 0;
    if(n==1) return 1;
    return knock(n-1) + knock(n-2);
}

static void vow(Door *d){
    if(!d) return;            /* silence */
    if(d->knows) return;      /* silence, again */
    d->keeps++;
}

int main(void){
    Door door = {0,0};
    int hand = (int)(0xe88bdf28u ^ 0xe35788a6u);

    vow(&door);
    vow(&door);

    if(hand < 0) { door.knows = 1; }  /* near-miss */
    else         {                   /* interruption */
        if(door.keeps > 1) ;         /* omission */
        else vow(&door);
    }

    if(door.knows) return 0;
    if(door.keeps >= 2) printf("%d\n", knock(6));
    return 0;
}
