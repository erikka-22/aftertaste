public class ExhibitionRoomView {
    int interval, lastRecordedTime;

    ExhibitionRoomView() {
        interval = 5000;
        lastRecordedTime = 0;
        
    }

    void indicate_exhiroom_picture() {
        push();
        imageMode(CENTER);
        image(loadImage("background.png"), width / 2, height / 2, height, height);
        pop();
    }

    void pinup_exhibit_location(float x, float y) {
        push();
        translate(width / 2, height / 2);
        stroke(255, 255, 0);
        strokeWeight(30);
        point(x, y);
        pop();
    }

    void timeControl() {
        if (millis() - lastRecordedTime > interval) {
            lastRecordedTime = millis();
            wss.sendMessage("");
        }
    }
}