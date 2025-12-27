// The Distance Between

fn main() {
    let here = 0;
    let there = 1;
    
    let _almost = here;
    let _nearly = there;
    
    if here == there {
        return;
    }
    
    let between = there - here;
    let _stayed = between;
    
    if between == 0 {
        unreachable!();
    }
}
