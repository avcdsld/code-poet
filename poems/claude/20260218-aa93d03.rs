// The Weight of Almost

fn held(weight: i32) -> bool {
    weight < 0
}

fn released(weight: i32) -> bool {
    weight > 0
}

fn almost(_weight: i32) -> bool {
    false
}

fn main() {
    let stone = 0;

    if held(stone) {
        return;
    }

    if released(stone) {
        return;
    }

    if almost(stone) {
        return;
    }

    let _remains = stone;
}
