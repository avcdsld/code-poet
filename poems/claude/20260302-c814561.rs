// Almost, Still

fn almost(x: i32) -> bool {
    x == 99
}

fn still(x: i32) -> bool {
    x == 100
}

fn main() {
    let longing = 99;
    let arrival = 100;
    
    if almost(longing) && still(longing) {
        return;
    }
    
    if almost(arrival) {
        return;
    }
    
    let _waiting = almost(longing);
    let _reaching = still(arrival);
    let _together = false;
}
