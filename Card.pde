public class Card {
    CardPositionModel position = new CardPositionModel();
    String text;
    PImage img;
    int i;
    // float x, y;
    Rect rect = new Rect();

    public Card(String text, PImage img) {
        this.text = text;
        this.img = img;
        // this.x = position.getPosition(0).x;
        // this.y = position.getPosition(0).y;
    }


    public void displayText(float x, float y) {
        push();
        fill(0);
        textAlign(LEFT, TOP);
        text(text, x + 175, y + 20, width * 0.25, height * 0.35);
        pop();
    }

    public void displayRect(float x, float y) {
        rect.display(x, y, width * 0.4, height * 0.4);       
    }

    public void displayImage(float x, float y) {
        image(img, x, y);
    }
}