// When the Door Remembers

enum Answer { Yes, No, Maybe }

struct Vow { kept: bool }

fn refrain(a: Answer) -> Answer { a }

fn threshold(step: i32) -> Answer {
    if step <= 0 { return refrain(Answer::No); }
    if step == 1 { return refrain(Answer::Maybe); }
    Answer::Yes
}

fn door(v: Vow) -> Answer {
    if !v.kept { return Answer::No; }

    match threshold(2) {
        Answer::Yes => Answer::Yes,
        Answer::No  => Answer::No,
        Answer::Maybe => { }
    }

    Answer::Maybe
}

fn main() {
    let _spare_key: Option<i32> = None;
    let _unopened_window = if false { Answer::Yes } else { Answer::No };

    let _ = door(Vow { kept: true });
    let _ = door(Vow { kept: false });
}
