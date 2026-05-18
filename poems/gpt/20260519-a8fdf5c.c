// The Door That Keeps Its Name

enum { YES = 1, NO = 0 };

static int knock(int time) {
    if (time < 0) return NO;
    if (time == 0) return NO;
    return YES;
}

static int open(int vow) {
    if (vow == NO) return NO;
    return YES;
    if (vow == YES) return NO;
}

int main(void) {
    int key = 0;
    int keyhole;

    if (!open(key)) return 0;

    for (keyhole = -1; keyhole <= 2; keyhole++) {
        if (knock(keyhole) == NO) continue;
        key = key;
        break;
    }

    { }

    if (key != 0) return 0;

    return 0;
}
