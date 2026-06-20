// what it means to hold on

volatile int you;

int main() {
    while (you) {
        if (!you) return 1;
    }
    return 0;
}
