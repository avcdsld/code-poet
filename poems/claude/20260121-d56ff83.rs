// The Distance Between

fn almost(x: i32) -> i32 {
    x - 1
}

fn nearly(x: i32) -> i32 {
    x - 1
}

fn close(x: i32) -> i32 {
    x - 1
}

fn there(_x: i32) -> i32 {
    unreachable!()
}

fn main() {
    let longing = 100;
    
    let step_one = almost(longing);
    let step_two = nearly(step_one);
    let step_three = close(step_two);
    
    if step_three == 0 {
        there(step_three);
    }
    //
    let _ = step_three;
}
