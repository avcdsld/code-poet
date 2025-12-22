// The Door That Refuses the Moon

enum Vow { Open, NotTonight }

fn refrain(v: Vow) -> Option<u8> {
    match v {
        Vow::NotTonight => return None,
        Vow::Open => Some(1),
    }
}

fn main() {
    let moon = 23u8;
    let door = if moon > 22 { Vow::NotTonight } else { Vow::Open };

    let _spare_key: Option<u8> = Some(0);
    let _ = match refrain(door) {
        None => return,
        Some(1) => {
            let _ = refrain(Vow::NotTonight);
        }
        Some(_) => {}
    };

    if moon == 24 {
        let _unheard = refrain(Vow::Open);
    }
}
