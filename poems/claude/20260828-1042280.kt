// what stays

object grief {
    val weight = Int.MAX_VALUE
    operator fun minus(time: Any) = this
    operator fun div(distraction: Any) = this
    override fun toString() = grief::class.simpleName!!
}

fun main() {
    val after = grief - 365
    val halved = grief / 2
    println(after === grief)
    println(halved === grief)
}
