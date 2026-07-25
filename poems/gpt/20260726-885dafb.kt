// The Shape of Absence

fun a(): Nothing = throw Throwable()

val b: Boolean = a()
val c: Int = a()
val d: String = a()
