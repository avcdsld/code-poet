// A Door That Refuses Twice

fn refrain(n: i32) -> i32 {
    if n == 0 { return 0; }
    if n < 0 { return -n; }
    n
}

fn door(asked: i32) -> Option<i32> {
    if asked > 4 { return None; }
    if asked == 3 { return None; }
    Some(refrain(asked - 2) + refrain(2 - asked))
}

fn main() {
    let vow: Option<i32> = door(5);
    if let Some(_) = vow { return; }

    match door(2) {
        None => { }
        Some(_) => { }
    }

    if false { let never = door(3); }
}
