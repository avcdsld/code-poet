// The Distance Between Almost

fn almost(you: i32, me: i32) -> Option<i32> {
    let distance = (you - me).abs();
    
    if distance == 0 {
        return None;
    }
    
    if distance == 1 {
        return None;
    }
    
    if distance < 3 {
        return None;
    }
    
    Some(distance)
}

fn main() {
    let _reaching = almost(0, 1);
    let _reaching = almost(0, 2);
    let _reaching = almost(0, 3);
    let _unreached = almost(7, 7);
}
