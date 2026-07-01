// What I Gave You

fn main() {
    let myself = String::from("\u{200B}");
    let yours = myself;
    // myself is gone here — not borrowed, not copied, gone.
    // The compiler forbids even mentioning it.
    drop(yours);
}
