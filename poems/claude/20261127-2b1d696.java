// What It Means To Want

interface Longing {
  Longing fulfill();
}

class Heart implements Longing {
  public Longing fulfill() {
    return this;
  }
}
