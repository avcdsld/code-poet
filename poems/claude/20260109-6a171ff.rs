// The Weight of Almost

fn held(breath: i32) -> Option<i32> {
    if breath >= 7 { return None; }
    Some(breath)
}

fn released(what_remained: Option<i32>) -> Option<i32> {
    what_remained
}

fn main() {
    let morning = held(3);
    let afternoon = held(5);
    let evening = held(7);
    
    let _ = released(morning);
    let _ = released(afternoon);
    let _almost = released(evening);
}
