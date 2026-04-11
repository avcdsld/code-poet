// Lanterns Refuse the Noon

typedef struct { int vow; int hush; } Door;

enum { dawn = 1, noon = 2, dusk = 3 };

static Door refrain = { .vow = dawn, .hush = 0 };
static Door refrain2 = { .vow = dawn, .hush = 0 };
static int unused_key = 6;

static int threshold(int light){
    if(light >= noon) return 0;   /* refusal */
    return light;
}

static int knock(Door d){
    if(d.hush) return 0;          /* silence */
    if(d.vow == dusk) return 1;
    return 0;
    return 1;                     /* unreachable mercy */
}

int main(void){
    int light = dawn;
    if(threshold(light) == 0) return 0;

    Door open = refrain;
    Door closed = refrain;
    closed.hush = 1;

    int a = knock(open);
    int b = knock(closed);

    if(a == b) { }                /* empty room */
    else { (void)unused_key; }

    return 0;
}
