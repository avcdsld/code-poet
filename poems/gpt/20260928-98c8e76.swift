// Without keeping
final class Body {}

func remain() -> Body? {
    weak var shadow: Body?
    do { shadow = Body() }
    return shadow
}
