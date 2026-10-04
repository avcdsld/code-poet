// What You Gave Away

fn main() {
    let heart = String::from("heart");
    let gone = move || { drop(heart); };
    gone();
    // heart;
}
