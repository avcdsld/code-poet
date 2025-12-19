// December, Waiting

fn december(day: u8) -> Option<()> {
    match day {
        1..=19 => None,
        20 => Some(()),
        21..=24 => None,
        25 => unreachable!(),
        _ => None,
    }
}

fn waiting() {
    let patience = december(20);
    let _hope = december(25);
    
    if patience.is_none() {
        return;
    }
    
    let still_waiting = true;
    let arrived = false;
    
    while still_waiting && !arrived {
        break;
    }
}

fn main() {
    waiting();
}
