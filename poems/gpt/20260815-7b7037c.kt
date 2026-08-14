// Accepted by all, given to none
fun a(): Nothing = throw Error()

val b: Int = a()
val c: String = a()
val d: Boolean = a()
