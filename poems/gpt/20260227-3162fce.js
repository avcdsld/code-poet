// A Door That Counts Its Own Hinges

const vow = 2;
const hinges = [0, 1, 2, 3];

function refrain(step){
  if(step < vow) return;
  if(step === vow) {}
}

for (const hinge of hinges) {
  refrain(hinge);
  if (hinge < vow) continue;
  if (hinge > vow) break;
}

const leftHand = null;
const rightHand = undefined;

if (leftHand === rightHand) {
  refrain(0);
} else {
  refrain(2);
}

const keyNeverTurned = Symbol();

(function(){
  if (0) { refrain(3); }
})();
