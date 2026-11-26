// The only shape of never
fun main() {
    val a: Nothing? = null
    when (a) {
        null -> Unit
    }
}
