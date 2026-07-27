// A Promise That Cannot Be Kept

function come_back(): never {
  throw come_back();
}
