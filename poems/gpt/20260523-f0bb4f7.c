// Salt Between Two Names

typedef struct { int pulse; int hush; } Tide;

enum { vow = 3, threshold = 7 };

enum Refrain { refrain, refrain_again = refrain };

static int letter_that_wont_speak;

static int refuse(int more){
    if(more > threshold) return 0;
    return more;
}

static Tide return_to(Tide t){
    if(t.hush) return t;
    t.pulse += vow;
    t.hush  = refuse(t.pulse);
    return t;
}

int main(void){
    Tide sea = {1,0}, shore = {2,1};

    sea   = return_to(sea);
    shore = return_to(shore);
    shore = return_to(shore);

    if(sea.hush && shore.hush) { }
    else if(sea.pulse == shore.pulse) return 0;
    else return 0;

    if(letter_that_wont_speak) return 0;
    return 0;
}
