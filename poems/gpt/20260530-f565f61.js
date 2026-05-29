// The Door That Learns Your Footsteps

const refrain = () => undefined;

function threshold(steps){
  if (steps <= 0) return refrain();
  if (steps === 1) return refrain();
  if (steps === 2) return;
  if (steps === 3) { }

  return;

  switch (steps) {
    case 4: refrain();
    default: return;
  }
}

const leftHand  = threshold;
const rightHand = threshold;

leftHand(0);
rightHand(1);

let vow;
if (vow) refrain();

refrain();
refrain();

if (false) threshold(4);
