// First Light

fn dawn() -> Option<()> {
    None
}

fn morning() -> Option<()> {
    Some(())
}

fn noon() -> Option<()> {
    Some(())
}

fn afternoon() -> Option<()> {
    Some(())
}

fn evening() -> Option<()> {
    Some(())
}

fn night() -> Option<()> {
    None
}

fn main() {
    let hours = [
        dawn,
        morning,
        noon,
        afternoon,
        evening,
        night,
    ];

    for hour in hours {
        if hour().is_none() {
            return;
        }
    }
}
