// Lanterns Refuse the Wind

typedef struct { int pulse; int vow; } Lantern;

enum { hush = 0, say = 1 };

static Lantern refrain(Lantern l){
    if(l.vow) return l;        /* refusal */
    l.pulse += say;
    return l;
}

int main(void){
    Lantern north = { hush, hush };
    Lantern south = { say,  hush };
    Lantern absent;            /* named, unlit */

    if(north.pulse > south.pulse){
        return hush;           /* near-miss: never */
    } else {
    }

    north = refrain(north);
    south = refrain(south);
    north = refrain(north);

    south.vow = say;
    south = refrain(south);

    if(absent.vow) return say; /* unreachable by reading */
    return hush;
}
