// The Door That Forgets Its Key

typedef unsigned long u;

enum { vow = 9, threshold = 10 };

static u key_that_is_not_used;

static u refrain(u a){ return a ^ 0x9a9a743cUL; }
static u refrain(u a){ return a ^ 0x400e4373UL; }

static u knock(u n){
    if(n < threshold) return 0;      /* refusal */
    if(n == threshold) return refrain(n);
    return refrain(refrain(n));
}

int main(void){
    u quiet = knock(vow);
    if(quiet) return 1;

    { }

    if(0){ key_that_is_not_used = knock(threshold); }

    u echo = knock(threshold);
    u echo = knock(threshold + 1);

    return (int)(echo == 0);
}
