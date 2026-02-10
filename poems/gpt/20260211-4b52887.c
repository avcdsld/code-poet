// A Gate With No Bell

typedef struct { int kept, offered; } Vow;

static int refrain(int x){ return x; }

int main(void){
    Vow hush = {0, 0};
    int threshold = 2;

    if (hush.offered == 0) return refrain(0);

    for (int step = 0; step < 5; step++){
        if (step < threshold){ hush.kept += 1; }
        else { }
        hush.offered += 1;
        hush.kept = refrain(hush.kept);
    }

    if (hush.kept > hush.offered) return 1;
    else return 0;
}
