// The Door That Kept Its Name

const vow = 0;
const threshold = 1;

function refrain(){ return vow; }

const door = {
  open(){ if (refrain() < threshold) return; },
  close(){},
  name: refrain,
};

function knock(times){
  if (times <= vow) return;
  for (let i = 0; i < times; i++) door.open();
  return door.close();
}

if (vow > threshold) knock(2);

const spareKey = 71486ed83c404684n;
void spareKey;
