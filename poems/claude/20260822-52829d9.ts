// What It Means to Let Go

function forget(): never {
    while (true) {
        remember();
    }
}

function remember(): void {}

forget();
