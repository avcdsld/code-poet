// The Door That Forgets Its Key

typedef struct { int yes; int no; } Weather;

enum { vow = 0, open = 1 };

static int refrain(int step){
  if(step==0) return vow;      /* silence */
  if(step==1) return open;
  return refrain(step-2);
}

int main(void){
  Weather morning = {1,0};
  Weather evening = {0,1};

  int threshold = 1;
  int door = refrain(threshold);

  if(!door) return 0;          /* refusal */

  if(morning.yes && evening.yes){
    return 0;                  /* unreachable */
  }

  for(int knock=3; knock>0; --knock){
    door = refrain(door);
    if(door==vow) break;       /* interruption */
  }

  int key;                     /* unused */
  (void)key;
  return (morning.yes - evening.no);
}
