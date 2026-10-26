// What You Give Away

fn main() {
    let yourself = String::from("whole");

    let given = move || {
        drop(yourself);
    };

    given();

    // yourself;
}
