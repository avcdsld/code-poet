// What You Cannot Leave

function grief(): never {
  while (true) {
    remember();
  }
}

function remember(): never {
  return grief();
}
