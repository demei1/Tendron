class Cluster {
    private static final int NUM_STEMS = 7;
    
    public Cluster(int len, int x, int y) {
        for (int i = 0; i < NUM_STEMS; i++) {
            float angle = random(-PI / 4, PI / 4) + TWO_PI * i / NUM_STEMS;
            new Tendril(len, angle, x, y);
        }
    }
}
