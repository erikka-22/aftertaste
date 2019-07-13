public class Card {
    PVector position;
    String text;
    PImage img;
    int i;
    float x, y;
    Rect rect = new Rect();

    public Card(String text, PImage img) {
        this.text = text;
        this.img = img;
        this.x = 300;
        this.y = 200;
        
    }


    public void displayText() {
        text(text, width/3, height/3);
    }

    public void displayRect() {
        rect.display(x, y, width / 10, height / 10);       
    }

    public void displayImage() {
        image(img, x, y);
    }


}