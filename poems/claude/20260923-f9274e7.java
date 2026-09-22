// What Remains

class WhatRemains {
    public static void main(String[] args) {
        try {
            live();
        } catch (Exception e) {
        } finally {
            remember();
        }
    }

    static void live() throws Exception {
        throw new Exception();
    }

    static void remember() {
    }
}
