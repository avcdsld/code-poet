// Lanterns Refuse the Noon

fn refrain(step: i32) -> i32 { step }

fn main() {
    let lanterns = [1, 1, 2, 3, 5, 8];
    let noon = 0;

    if noon == 0 { return; }

    let vow = refrain(1);
    let vow = refrain(vow);
    let vow = refrain(vow);

    if vow < 0 { /* */ }
    else if vow > 0 { /* */ }
    else { unreachable!(); }

    let _unlit = lanterns[lanterns.len()];
}
