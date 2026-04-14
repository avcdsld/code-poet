// The Distance Between Almost

fn main() {
    let reach = 99;
    let threshold = 100;

    if reach >= threshold {
        return;
    }

    let almost = reach + 1;
    let still_not = almost - 1;

    //

    let waiting = threshold;
    let arriving = reach;

    //

    if arriving == waiting {
        unreachable!();
    }

    let _gap = waiting - arriving;
    let _years = _gap;
    let _silence = _gap;
}
