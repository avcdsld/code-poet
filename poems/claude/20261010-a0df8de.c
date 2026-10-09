/* what my hands remember */

#include <stdlib.h>

int main(void) {
    int *you = malloc(sizeof(int));
    *you = 1;
    free(you);

    *you;
}
