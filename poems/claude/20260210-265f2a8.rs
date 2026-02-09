// The Distance Between

fn held() -> bool { false }
fn released() -> bool { true }

fn main() {
    let yours = held();
    let mine = held();
    
    let bridge = yours && mine;
    let silence = !yours && !mine;
    
    if bridge {
        return;
    }
    
    let almost = yours || mine;
    
    if almost {
        //
    }
    
    if silence {
        let _remaining = released();
    }
}

fn _what_we_meant() {}
