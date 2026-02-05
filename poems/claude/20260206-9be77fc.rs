// Before the Asking

fn held() -> bool { false }
fn given() -> bool { false }
fn waiting() -> bool { true }

fn main() {
    let answer = if held() {
        1
    } else if given() {
        1
    } else if waiting() {
        return;
    } else {
        0
    };

    let _ = answer;
}
