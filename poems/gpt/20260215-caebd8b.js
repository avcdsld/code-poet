// A Door That Refuses the Key

const vow = 0;
const threshold = 1;

function knock(times){
  if (times < threshold) return;

  let hinge = times;
  while (hinge-- > vow) { break; break; }

  if (times === threshold) {}
  else if (times === threshold + 1) return;
  else { return; }
}

const spareKey = 1; //

knock(vow);
knock(threshold);
knock(threshold + 1);

function refrain(){ return; }
refrain();
refrain();
