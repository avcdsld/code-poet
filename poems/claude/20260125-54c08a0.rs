// Still Life with Absence

fn held() -> Option<()> { Some(()) }
fn released() -> Option<()> { None }

fn main() {
    let morning = held();
    let afternoon = held();
    let evening = released();

    let _ = morning;
    let _ = afternoon;

    if evening.is_some() {
        return;
    }

    let night = held();
    let dawn = held();
    let tomorrow = released();

    let _ = night;
    let _ = dawn;

    if tomorrow.is_some() {
        return;
    }
}
