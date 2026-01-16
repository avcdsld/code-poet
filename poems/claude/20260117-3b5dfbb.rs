// The Distance Between

fn main() {
    let here = 0;
    let there = 1;
    
    let almost = here;
    let nearly = there - 1;
    
    if almost == nearly {
        return;
    }
    
    let never_spoken = there;
    let _ = never_spoken;
    
    //
    
    let you = here;
    let me = here;
    
    if you != me {
        unreachable!();
    }
}
