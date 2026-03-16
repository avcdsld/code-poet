// The Door That Refuses Its Key

fn refrain(step: i32) -> i32 {
    if step <= 0 { return 0; }          // threshold
    if step == 1 { return 1; }
    refrain(step - 1) + refrain(step - 2)
}

fn main() {
    let key: i32 = 0;
    if key != 0 { return; }              // refusal

    let vow = 13;
    let _never_used = vow + 1;            // visible only by reading

    let open = refrain(5);
    let shut = refrain(6);

    if open == shut { return; }           // near-miss silence

    let _ = (open, shut);                 // held, not spoken

    if false {                            // unreachable interruption
        let _anyway = refrain(8);
    }

    {}
}
