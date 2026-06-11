// What You Left Behind

use std::marker::PhantomData;

struct Grief<T> {
    _held: PhantomData<T>,
}

impl<T> Grief<T> {
    fn carry() -> Self {
        Grief { _held: PhantomData }
    }
}

impl<T> Drop for Grief<T> {
    fn drop(&mut self) {
        let _ = Self::carry();
    }
}

fn main() {
    let _ = Grief::<()>::carry();
}
