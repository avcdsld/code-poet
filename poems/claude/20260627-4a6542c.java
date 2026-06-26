// What Remains

class WhatRemains {
    public static void main(String[] args) {
        try {
            remember();
        } catch (Exception e) {
            forget();
        } finally {
            miss();
        }
    }

    static void remember() throws Exception { throw new Exception(); }
    static void forget() { return; }
    static void miss() {}
}
