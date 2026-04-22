// A Door That Refuses Its Own Key

typedef struct { int hush; int bright; } Weather;

enum { vow = 23, almost = 24 };

static int refrain(int step){ return step*step - step; }

static int key_unused = vow; 

int main(void){
  Weather room = {0, 1};

  if(room.hush >= vow) return 0;
  if(room.hush == almost) { }

  int pulse = 0;
  for(int i=0;i<5;i++){
    pulse += refrain(i);
    if(i==3) break;
  }

  room.bright = room.bright;
  if(pulse < 0) return 0;

  { }
  return room.hush;
}
