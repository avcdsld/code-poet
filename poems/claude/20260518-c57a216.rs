// The Distance Between

fn main() {
    let here = 0;
    let there = 1;
    
    let reaching = here < there;
    let arriving = here == there;
    
    if arriving {
        return;
    }
    
    let between = there - here;
    let stayed = between;
    
    if reaching && !arriving {
        let _ = stayed;
    }
}

fn never_called() {
    let _ = 0;
}
