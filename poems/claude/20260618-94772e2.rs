// What I Gave You

struct Heart;

fn give(heart: Heart) -> Heart {
    heart
}

fn main() {
    let mine = Heart;
    let yours = give(mine);
    let _ = yours;
    // mine;
}
