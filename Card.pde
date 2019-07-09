public class Card {

    String text;
    PImage img;
    int i, x, y;
    

    public Card(String text, PImage img) {
        this.text = text;
        this.img = img;
        this.x = 100;
        this.y = 100;
        
    }


    public void displayText() {
        text(text, width/3, height/3);
    }

    public void displayRect(int x) {
        fill(255);
        noStroke();
        rect(x, y, width / 10, height / 10);       
    }

    public void displayImage(int x) {
        image(img, x, y);
    }


}