// The Distance Between Two Hearts

fn main() {
    let yours = 14;
    let mine = 14;
    
    let distance = yours - mine;
    
    if distance != 0 {
        return;
    }
    
    let february = true;
    let always = false;
    
    match (february, always) {
        (true, true) => unreachable!(),
        (true, false) => {}
        (false, _) => return,
    }
    
    let _yours = yours;
    let _mine = mine;
    let _ours = distance;
}
