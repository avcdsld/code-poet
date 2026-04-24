// The Door That Refuses to Be a Door

typealias Pulse = Int

data class Vow(val threshold: Pulse, val kept: Boolean = false)

enum class Weather { CLEAR, OVERCAST }

fun refrain(step: Pulse) = step % 2

fun pause(v: Vow): Vow {
    if (v.kept) return v
    if (v.threshold < 0) return v
    return v.copy(kept = true)
}

fun main() {
    val doorstep = Vow(threshold = 2)
    val weather = if (refrain(1) == refrain(3)) Weather.CLEAR else Weather.OVERCAST

    val empty = if (weather == Weather.CLEAR) { } else { pause(doorstep) }

    when (refrain(2)) {
        0 -> {
            if (doorstep.kept) return
            return
        }
        else -> {
            if (doorstep.threshold == 3) {
                val unreachable = pause(doorstep)
            }
        }
    }

    val after = pause(doorstep)
    if (after.kept && !doorstep.kept) return
}
