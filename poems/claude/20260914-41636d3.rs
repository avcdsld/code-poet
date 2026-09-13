// What I Gave You

fn main() {
    let everything = vec!["all of it"];
    let give = move || { drop(everything); };
    give();
    // everything;
}
