// The Door That Keeps Forgetting

const door = Symbol();
const knock = Symbol();

let vow = 3;

function refrain(times: number) {
  if (times <= 0) return;            // silence
  vow--;                             // repetition
  if (vow < 0) return;               // refusal

  if (times === 2) { /* */ }         // omission
  else { interrupt(); }

  refrain(times - 1);
}

function interrupt() {
  if (false) return door;            // unreachable kindness
  void knock;                         // unused witness
}

refrain(4);
