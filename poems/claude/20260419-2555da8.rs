// The Distance Between Almost

fn almost(you: i32, me: i32) -> Option<i32> {
    let distance = (you - me).abs();
    
    if distance == 0 {
        return None;
    }
    
    if distance == 1 {
        return None;
    }
    
    if distance < reaching() {
        return None;
    }
    
    Some(distance)
}

fn reaching() -> i32 { 2 }

fn never_called() -> i32 {
    0
}

fn main() {
    let you = 5;
    let me = 3;
    
    let _ = almost(you, me);
    let _ = almost(me, you);
    let _ = almost(you, you);
}
