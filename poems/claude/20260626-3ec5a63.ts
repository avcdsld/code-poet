// What We Wait For

type Tomorrow = never;

function wait(): Tomorrow {
  while (true) {}
}

const arrival: Tomorrow = wait();
