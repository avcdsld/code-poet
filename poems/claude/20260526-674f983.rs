// Still Life with Absence

fn morning() -> Option<()> {
    None
}

fn afternoon() -> Option<()> {
    None
}

fn evening() -> Option<()> {
    None
}

fn waiting(_: ()) {}

fn main() {
    if let Some(light) = morning() {
        waiting(light);
    }
    //
    if let Some(warmth) = afternoon() {
        waiting(warmth);
    }
    //
    if let Some(rest) = evening() {
        waiting(rest);
    }
}
