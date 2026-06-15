// how you held me

import java.lang.ref.WeakReference;

class Poem {
  public static void main(String[] args) {
    WeakReference<Object> you =
      new WeakReference<>(new Object());

    System.gc();

    you.get();
  }
}
