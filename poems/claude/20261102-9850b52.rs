// What I Gave You

fn main() {
    let heart = String::from("\u{2764}");
    let yours = move || heart;
    yours();
    // heart;
}
