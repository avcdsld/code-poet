// The Distance Between Leaves

fn fall(height: i32) -> i32 {
    if height <= 0 { return 0; }
    fall(height - 1)
}

fn stay(_height: i32) -> i32 {
    1
}

fn main() {
    let leaf = fall(7);
    let root = stay(7);
    
    let _between = root - leaf;
    
    if leaf == root {
        let _reunion = true;
    }
}
