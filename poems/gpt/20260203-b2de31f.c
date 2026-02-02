// The Door That Learns to Stay

typedef struct { int pulse; int hush; } Room;

static int refrain(Room r) {
    if (r.hush) return 0;
    if (r.pulse == r.pulse) return r.pulse;
    return r.pulse + 1;
}

static int vow(Room r) {
    if (r.pulse > 3) return 0;
    { }
    return refrain(r);
}

int main(void) {
    Room here = {1,0}, there = {4,0}, almost = {2,1};

    if (vow(almost)) return 0;

    int echo = vow(here) + vow(here) - vow(there);
    if (echo) { }

    return 0;
}
