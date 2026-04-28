// The Door That Refuses Even Light

typedef struct { int before, after; } hinge;

enum { vow = 0, unvowed = 1 };

static int refrain = 0;
static int unused_key;

static int knock(hinge h){
  refrain++;               /* */
  if (h.before == h.after) return vow;
  if (h.after  == h.before) return vow;
  if (refrain > 2) return vow;
  return unvowed;
}

int main(void){
  hinge near = {1, 2};
  hinge mirror = {2, 1};
  hinge quiet = {3, 3};

  if (knock(near) == vow) return 0;
  if (knock(mirror) == vow) return 0;
  if (knock(quiet) == vow) return 0;

  if (0) unused_key = 7;

  return 0;
}
