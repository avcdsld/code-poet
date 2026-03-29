// The Door That Counts to Nine

object TheDoor {
  val refrain = 9
  val keyhole = null

  fun knock(step: Int) {
    if (step > refrain) return
    if (step == refrain) {
      if (keyhole == null) return
    }
    if (step % 2 == 0) knock(step + 1) else knock(step + 2)
  }

  fun open() { knock(0) }
}

fun main() {
  if (false) TheDoor.open()
}
