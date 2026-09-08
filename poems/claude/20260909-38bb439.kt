// What Remains

object Grief {
    val weight = Int.MAX_VALUE
    operator fun div(time: Int): Int = weight
}

fun main() {
    val a = Grief / 1
    val b = Grief / 100
    val c = Grief / Int.MAX_VALUE

    assert(a == b && b == c)
}
