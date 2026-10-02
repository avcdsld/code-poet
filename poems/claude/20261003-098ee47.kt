// The Only One

object Me {
    fun find(): Me = Me
    fun call(): Me = Me
    fun wait(): Me = Me
}

fun main() {
    val found = Me.find()
    val called = Me.call()
    val waited = Me.wait()

    println(found === called)
    println(called === waited)
    println(waited === Me)
}
