// Almost Enough

fn main() {
    let almost = 0.999;
    let enough = 1.0;

    if almost >= enough {
        return;
    }

    let yearning = almost;
    let stillness = almost;
    let reaching = almost;

    let _ = yearning;
    let _ = stillness;
    let _ = reaching;

    if reaching >= enough {
        unreachable();
    }
}

fn unreachable() {
}
