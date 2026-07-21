// The Only One

object You {
    val replaceable: Boolean
        get() = false
}

fun main() {
    val a = You
    val b = You
    println(a === b)
}
