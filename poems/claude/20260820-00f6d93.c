// What Remains

int *held;

void together() {
    int warmth = 1;
    held = &warmth;
}

int main() {
    together();
    return *held;
}
