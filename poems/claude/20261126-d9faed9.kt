// What You Cannot Skip

sealed class After {
    object Anger : After()
    object Bargaining : After()
    object Silence : After()
}

fun live(it: After): Unit = when(it) {
    is After.Anger -> live(After.Bargaining)
    is After.Bargaining -> live(After.Silence)
    is After.Silence -> live(After.Anger)
}
