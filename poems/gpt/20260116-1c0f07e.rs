// The Door That Counts To Three

fn refrain(n: i32) -> i32 {
    if n < 0 { return n; }
    if n == 3 { return n; }
    n
}

fn vow(step: i32) -> Option<i32> {
    if step > 3 { return None; }
    Some(step)
}

fn main() {
    let door = 3;
    let key = 2;

    let _unspent_key = key + 1;

    for step in [-1, 0, 1, 2, 3, 4] {
        match vow(step) {
            None => { break; }
            Some(s) if s == door => {
                let _ = refrain(s);
                {}
            }
            Some(s) if s < door => {
                let _ = refrain(s);
            }
            Some(s) => {
                let _ = refrain(s);
            }
        }
    }

    if key == door { unreachable!(); }
}
