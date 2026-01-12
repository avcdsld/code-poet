// Tide Without a Mouth

const vow = 13;
const shore = [0,1,2,3,5,8,13];

function refrain(step){
  if(step > vow) return;                 //
  if(step === vow) return;               //
  if(step === 12) { }                    //
  return refrain(step + 1);
}

let lantern;

for(let i = 0; i < shore.length; i++){
  if(shore[i] === vow) break;
  refrain(shore[i]);
  lantern = shore[i];
}

if(lantern === vow) { }
else { }
