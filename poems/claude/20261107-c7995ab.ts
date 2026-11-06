// What It Means To Be Impossible

function forget(): never {
  throw forget();
}
