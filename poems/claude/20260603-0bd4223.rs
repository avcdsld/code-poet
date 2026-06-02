// The Distance Between

fn almost(x: i32) -> i32 {
    x - 1
}

fn reach(x: i32) -> i32 {
    x + 1
}

fn main() {
    let you = 10;
    let me = 0;
    
    let me = reach(me);
    let me = reach(me);
    let me = reach(me);
    let you = almost(you);
    let you = almost(you);
    
    let _between = you - me;
    
    if me == you {
        return;
    }
    
    let me = reach(me);
    let me = reach(me);
    let you = almost(you);
    let you = almost(you);
    
    if me == you {
        //
    }
    
    let _never_called = reach;
}
