// You Can Refuse To Let Go Exactly Once

class Grief {
    static Grief hold;

    protected void finalize() {
        hold = this;
    }

    public static void main(String[] args) throws Exception {
        hold = new Grief();
        hold = null;
        System.gc();
        Thread.sleep(100);

        // still here

        hold = null;
        System.gc();
        Thread.sleep(100);

        // gone
    }
}
