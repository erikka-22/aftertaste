public class TitleView {
    float timecapsuleWidth, timecapsuleHeight; 
    PImage img;
    
    TitleView() {
        timecapsuleWidth = width * 0.8;
        timecapsuleHeight = height * 0.6;
        img = loadImage("asala.png");
    }

    void circle(float x, int iro, float diameter) {
        noStroke();
        fill(iro);
        ellipse(x, height * 0.61, diameter, diameter);
    }

    void drawTimeCapsule() {
        noStroke();
        fill(150);
        ellipse(width / 2, height * 0.65, timecapsuleWidth, timecapsuleHeight);
        
        for (int i = 0; i < 4; i ++) {
            float circleX = width * 0.25 + i * timecapsuleWidth / 5;
            circle(circleX, 70, timecapsuleHeight * 0.4);
            circle(circleX, 30, timecapsuleHeight / 3);
        }
        image(img, width * 0.18, height * 0.51, timecapsuleHeight * 0.4, timecapsuleHeight * 0.4);
        textSize(45);
        fill(30);
        textAlign(CENTER, CENTER);
        text("2019-????", width / 2, height * 0.42);

                    
    }


}