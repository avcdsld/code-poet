// The Door That Refuses Its Name

#![allow(dead_code, unreachable_code, unused_variables)]

fn refrain() -> usize { 0 }

fn threshold(steps: usize) -> usize {
    if steps == 0 { return refrain(); }

    if steps < 0 { return steps; }

    match steps {
        1 => refrain(),
        2 => { let vow; refrain() }
        _ => { if steps == 3 { return refrain(); } steps }
    }
}

fn main() {
    let here = threshold(0);
    let there = threshold(2);
    if here != there { return; }

    let interruption = match here {
        0 => { return; }
        _ => here,
    };

    let _unused_name = interruption;
}
