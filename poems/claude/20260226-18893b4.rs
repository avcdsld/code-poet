// The Distance Between Two Hands

fn reaching() -> Option<()> {
    let left = 0;
    let right = 0;

    if left == right {
        return None;
    }

    Some(())
}

fn waiting() -> Option<()> {
    let left = 1;
    let right = 1;

    if left == right {
        return None;
    }

    Some(())
}

fn almost() -> Option<()> {
    let left = 2;
    let right = 3;

    if left == right {
        return None;
    }

    Some(())
}

fn main() {
    let _ = reaching();
    let _ = waiting();
    let _ = almost();
}
