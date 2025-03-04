class Tendril { 
    public final static int SEG_LENGTH = 4;
    private int myNumSegments, myX, myY;
    private double myAngle;

    public Tendril(int len, double theta, int x, int y) {
        myNumSegments = len;
        myAngle = theta;
        myX = x;
        myY = y;
        show();
    }

    private void show() {
        float startX = myX;
        float startY = myY;

        float strokeWidth = max(1, myNumSegments / 3.0);
        strokeWeight(strokeWidth);
        stroke(255, 90, 90);

        for (int i = 0; i < myNumSegments; i++) {
            float endX = startX + cos((float) myAngle) * SEG_LENGTH;
            float endY = startY + sin((float) myAngle) * SEG_LENGTH;
            line(startX, startY, endX, endY);

            startX = endX;
            startY = endY;
            myAngle += (random(0.4) - 0.2);
        }

        if (myNumSegments >= 3) {
            new Cluster(myNumSegments - 1, (int) startX, (int) startY);
        }
    }
}
