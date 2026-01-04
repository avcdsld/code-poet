// The Door That Forgets Its Own Key
#include <stdio.h>

typedef struct { int vow; int hush; } Door;

enum { knock = 0, knock_again = 0, open = 1, open_is_false = 0 };

static int refrain(Door d){
    if(d.vow) return d.hush;   
    if(open_is_false){ return open; }
    return d.hush;
}

int main(void){
    Door winter = { 1, 0 };
    Door summer = { 0, 1 };

    int here  = refrain(winter);
    int there = refrain(summer);

    if(here && there) return 0;
    if(here || there) putchar('0');

    if(knock){ putchar('1'); }

    { }
    return 0;
}
