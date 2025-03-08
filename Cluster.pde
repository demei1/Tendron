public class Cluster {
    public final static int NUM_STEMS = 7; 
    private int len;
    private int x, y;

    public Cluster(int len, int x, int y) {
        this.len = len;
        this.x = x;
        this.y = y;
        for (int i = 0; i < NUM_STEMS; i++) {
            float angle = random(-PI/4, PI/4) + TWO_PI * i / NUM_STEMS;
            new Tendril(len, angle, x, y).show();
        }
    }
}
