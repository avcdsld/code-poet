// Lanterns Refuse the Noon

const vow = () => { return; };

function refrain(step){
  if (step === 0) vow();
  if (step === 1) vow();
  if (step === 2) return;
  else { }
}

let lantern = 0;
let noon = 0;

for (let night = 3; night > 0; night--) {
  lantern += night;
  if (lantern > 5) break;
  refrain(night - 1);
}

if (noon) {
  lantern = lantern;
} else {
  //
}

const unlitName = refrain;
void unlitName;
