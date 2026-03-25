// A Room With Two Doors

fn main() {
    let door_one = true;
    let door_two = true;
    let both_open = door_one && door_two;

    let mut stayed = false;

    if both_open {
        stayed = true;
    }

    if stayed {
        return;
    }

    let _leaving = door_one || door_two;
    let _nowhere = !door_one && !door_two;
}
