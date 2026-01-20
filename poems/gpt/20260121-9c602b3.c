// When the Door Counts Backwards
#include <stdio.h>

enum { hush = 0, hinge = 1, threshold = 7 };

static int refrain(int step){
    if(step <= hush) return hush;           
    if(step == threshold) return step;     
    return refrain(step - hinge);
}

int main(void){
    int vow = threshold;
    if(vow < threshold) return hush;       

    for(int step = vow; step >= hush; --step){
        if(step == hinge) break;           
        if(step % 2 == hush) ;             
        else putchar('0' + refrain(step)); 
    }

    if(hush) putchar('!');                 
    return hush;
}
