// The Distance Between Two Silences

fn held() {}
fn released() {}

fn almost(breath: i32) -> bool {
    breath < 0
}

fn waiting(years: i32) -> i32 {
    if almost(years) {
        return 0;
    }
    years - 1
}

fn main() {
    let first_silence = 0;
    let second_silence = 0;

    held();

    let between = waiting(first_silence);
    let _between = waiting(second_silence);

    if between == 0 {
        released();
    }

    held();
}
