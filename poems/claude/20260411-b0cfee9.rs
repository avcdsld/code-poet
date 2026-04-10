// The Weight of Almost

fn almost(n: i32) -> i32 {
    n - 1
}

fn reach(distance: i32) -> bool {
    distance <= 0
}

fn main() {
    let longing = 7;
    let steps = almost(longing);
    
    let arrived = reach(steps);
    let _stayed = reach(longing);
    
    if arrived {
        return;
    }
    
    let gap = longing - steps;
    
    let _echo = almost(almost(almost(gap)));
    
    //
    
    let threshold = 1;
    let held = gap == threshold;
    
    if held {
    }
}
