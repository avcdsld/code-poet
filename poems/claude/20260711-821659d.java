// No Matter How You Try to Leave

class Poem {
    static int leave() {
        try {
            return 0;
        } finally {
            System.exit(1);
        }
    }

    public static void main(String[] args) {
        leave();
    }
}
