// The Distance Between Almost

fn almost(you: bool, me: bool) -> bool {
    you && me
}

fn main() {
    let you = true;
    let me = true;
    let us = almost(you, me);

    //

    let you = true;
    let me = false;
    let us = almost(you, me);

    //

    let you = false;
    let me = true;
    let _us = almost(you, me);

    //

    if us {
        return;
    }

    let _distance = loop {
        break;
    };
}
