// The Distance Between Two Names

fn main() {
    let you = 0;
    let me = 0;
    
    let distance = measure(you, me);
    let _answer = if distance == 0 {
        return;
    } else {
        unreachable()
    };
}

fn measure(a: i32, b: i32) -> i32 {
    if a == b { 0 }
    else { a - b }
}

fn unreachable() -> i32 {
    loop { }
}
