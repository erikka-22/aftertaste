public class Rect {
    Rect() {

    }

    public void colors(float x, float y, float rectWidth, float rectHeight, float r, float g, float b) {
        push();
        fill(r,g,b);
        rectMode(CENTER);
        rect(x, y, rectWidth, rectHeight);
        pop();
    }

    public void display(float x, float y, float rectWidth, float rectHeight) {
        push();
        fill(255);
        rectMode(CORNER);
        noStroke();
        rect(x, y, rectWidth, rectHeight);
        pop();
    }

    

  
}