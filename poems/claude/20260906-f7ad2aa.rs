// what i gave to that night

fn main() {
    let me = String::from("whole");
    let that_night = move || { drop(me); };
    that_night();
    // me;
}
