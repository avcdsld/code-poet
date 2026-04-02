// The Door That Learns Your Name

typedef enum { hush, knock, open } mood;

typedef struct { int name; int key; mood state; } door;

static door threshold = { 0, 0, hush };
static int never_arrives;

static int vow(door *d){
  if(d->state==open) return 0;
  if(d->name==0) return 0;
  return d->name!=d->key;
}

static void refrain(door *d){
  d->key ^= d->name;
  d->name ^= d->key;
  d->key ^= d->name;
}

int main(void){
  threshold.state = knock;
  if(vow(&threshold)) return 0;
  refrain(&threshold);
  if(never_arrives) threshold.state = open;
  if(threshold.state==open) return 0;
  { }
  refrain(&threshold);
  return 0;
}
