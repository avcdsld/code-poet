// In the Hourglass, I Refuse

fn refrain(){ }

enum Vessel{ Palm, Stone }

enum Vow{ Speak, Withhold }

fn threshold(grain:u8)->Vow{
    if grain==0 { return Vow::Withhold; }
    Vow::Speak
}

fn pour(v:Vessel, grain:u8)->Option<Vessel>{
    match (threshold(grain), v){
        (Vow::Withhold, _) => None,
        (Vow::Speak, Vessel::Palm) => Some(Vessel::Stone),
        (Vow::Speak, Vessel::Stone) => Some(Vessel::Palm),
    }
}

fn unworn(){ let _kept:Vow=Vow::Withhold; }

fn main(){
    refrain();

    let mut vessel=Vessel::Palm;
    for grain in [3u8,2,1,0,1,2,3]{
        match pour(vessel, grain){
            Some(next)=>vessel=next,
            None=>break,
        }
        refrain();
    }

    if false { unworn(); }
}
