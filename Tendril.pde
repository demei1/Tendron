class Tendril {
    private static final int SEG_LENGTH = 4;
    private int numSegments;
    private double angle;
    private float x, y;
    
    public Tendril(int len, double theta, int x, int y) {
        numSegments = len;
        angle = theta;
        this.x = x;
        this.y = y;
        show();
    }

    private void show() {
        float startX = x, startY = y;
        strokeWeight(max(1, numSegments / 3.0));
        stroke(255, 90, 90);
        
        for (int i = 0; i < numSegments; i++) {
            float endX = startX + cos((float) angle) * SEG_LENGTH;
            float endY = startY + sin((float) angle) * SEG_LENGTH;
            line(startX, startY, endX, endY);
            startX = endX;
            startY = endY;
            angle += (random(0.4) - 0.2);
        }
        
        if (numSegments >= 3) {
            new Cluster(numSegments - 1, (int) startX, (int) startY);
        }
    }
}
