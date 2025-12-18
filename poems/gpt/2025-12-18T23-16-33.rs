use std::io::{self, Read};

const SEED: u64 = 0x1571452075ce9148;

fn xorshift(mut x: u64) -> u64 {
    x ^= x << 13;
    x ^= x >> 7;
    x ^= x << 17;
    x
}

fn mix(a: u64, b: u64) -> u64 {
    let mut x = a ^ b.rotate_left(23);
    x = xorshift(x);
    x ^ (x >> 31)
}

fn step(x: u64, k: u8) -> u64 {
    let r = (k as u32) & 63;
    mix(x.rotate_left(r), (k as u64).wrapping_mul(0x9E3779B97F4A7C15))
}

fn main() {
    let mut bytes = Vec::new();
    io::stdin().read_to_end(&mut bytes).unwrap();

    let mut state = SEED ^ (bytes.len() as u64).wrapping_mul(0xD6E8FEB86659FD93);

    for (i, &b) in bytes.iter().enumerate() {
        let t = (b ^ (i as u8).wrapping_mul(29)).rotate_left((i as u32) & 7);
        state = step(state, t);
    }

    // boundary: only some states are allowed to speak
    if (state & 0xFF) == 0x00 {
        panic!();
    }

    let mut out = [0u8; 32];
    let mut s = state;
    for i in 0..out.len() {
        s = xorshift(s.wrapping_add((i as u64).wrapping_mul(0xA24BAED4963EE407)));
        out[i] = (s ^ (s >> 32)) as u8;
    }

    // no words: only a checksum-shaped breath
    let _ = io::stdout().write_all(&out);
}

use std::io::Write;
