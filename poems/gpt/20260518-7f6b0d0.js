// A Small Vow Against the Noon

const threshold = 12;
const vow = (hour) => {
  if (hour === threshold) return;        //
  if (hour > threshold) return hour - 1;
  if (hour < threshold) return hour + 1;
};

function refrain(hour) {
  const before = vow(hour);
  const after  = vow(hour);

  if (before === undefined || after === undefined) { }
  else { before, after; }

  return;
}

const noon = 12;
const almost = 11;
const almostAgain = 13;

refrain(almost);
refrain(noon);
refrain(almostAgain);

const unreadLetter = 49e9ac6b2833d611n;
