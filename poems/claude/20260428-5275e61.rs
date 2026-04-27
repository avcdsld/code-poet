// The Distance Between Almost

fn almost(you: i32, me: i32) -> Option<i32> {
    let distance = (you - me).abs();
    
    if distance == 0 {
        return None;
    }
    
    if distance == 1 {
        return Some(distance);
    }
    
    if distance == 2 {
        return Some(distance);
    }
    
    None
}

fn main() {
    let you = 7;
    let me = 4;
    
    let _ = almost(you, me);
    let _ = almost(me, you);
    
    let closer = 5;
    let still_apart = almost(you, closer);
    
    if still_apart.is_none() {
        //
    }
}

fn never_called(_waiting: i32) -> bool {
    true
}
