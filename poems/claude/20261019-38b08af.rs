// The Language Forbids You From Holding Onto Yourself

struct Embrace<'a> {
    held: Option<&'a Embrace<'a>>,
}

impl<'a> Drop for Embrace<'a> {
    fn drop(&mut self) {}
}

fn main() {
    let me = Embrace { held: None };
    // let me = Embrace { held: Some(&me) };
    drop(me);
}
