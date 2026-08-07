// what you kept

#include <stdlib.h>

int main() {
    int *us = malloc(sizeof(int));
    *us = 1;
    free(us);
    return *us;
}
