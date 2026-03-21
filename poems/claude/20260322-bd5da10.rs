// The Distance Between

fn stay() {}
fn leave() {}

fn main() {
    let here = 0;
    let there = 1;

    if here == there {
        return;
    }

    stay();
    stay();
    stay();

    //

    let almost = there - 1;

    if almost == there {
        leave();
    }

    stay();
}
