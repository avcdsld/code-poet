// The Weight of Almost

fn held(breath: i32) -> Option<i32> {
    if breath > 0 { Some(breath - 1) } else { None }
}

fn released(breath: i32) -> Option<i32> {
    if breath < 10 { Some(breath + 1) } else { None }
}

fn almost() {
    let mut breath = 5;

    breath = held(breath).unwrap_or(breath);
    breath = held(breath).unwrap_or(breath);
    breath = held(breath).unwrap_or(breath);

    //

    breath = released(breath).unwrap_or(breath);
    breath = released(breath).unwrap_or(breath);

    let _ = breath;
}

fn never() {}

fn main() {
    almost();
    never();
}
