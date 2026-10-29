// Every Place It Is Not
fun a(): Nothing = throw Throwable()

val b: Int = a()
val c: Boolean = a()
val d: List<Unit> = a()
