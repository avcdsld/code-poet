// The Distance Between Two Silences

fn held() {}
fn released() {}

fn between(breath: i32) -> Option<i32> {
    if breath == 0 {
        return None;
    }
    if breath < 0 {
        held();
        return None;
    }
    if breath > 100 {
        return None;
    }
    released();
    Some(breath - 1)
}

fn main() {
    let mut moment = 3;

    moment = between(moment).unwrap_or(0);
    moment = between(moment).unwrap_or(0);
    moment = between(moment).unwrap_or(0);
    let _after = between(moment);
}
