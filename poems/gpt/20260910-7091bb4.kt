// No Way Back
fun a(): Nothing = throw Throwable()

val b: Int = a()
val c: Boolean = a()
val d: String = a()
