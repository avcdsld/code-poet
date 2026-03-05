// The Distance Between

fn held(x: i32) -> Option<i32> {
    Some(x)
}

fn released(_: i32) -> Option<i32> {
    None
}

fn main() {
    let yours = held(1);
    let mine = held(1);
    let ours = released(2);

    let _ = yours.and(mine);
    let _ = mine.and(ours);
    let _ = ours.and(yours);

    //

    if ours.is_some() {
        return;
    }
}
