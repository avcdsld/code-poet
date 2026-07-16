// What The Body Keeps

#include <stdio.h>

void leave() {
    static int remains = 0;
    remains++;
}

int main() {
    leave();
    leave();
    leave();
    return 0;
}
