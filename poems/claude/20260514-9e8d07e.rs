// The Distance Between Here and Almost

fn main() {
    let here = 0;
    let almost = 1;
    let never = 2;

    let distance = almost - here;
    let remaining = never - almost;

    if distance == remaining {
        return;
    }

    let mut steps = here;

    while steps < almost {
        steps += 1;
    }

    while steps < never {
        //
    }
}
