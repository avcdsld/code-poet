// The Only One of Its Kind

object Me {
    fun find(other: Me): Me = this
    fun embrace(other: Me): Boolean = other === this
}

fun main() {
    val found = Me.find(Me)
    val together = Me.embrace(found)
}
