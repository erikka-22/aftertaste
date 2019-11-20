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
        rect(x, y, rectWidth, rectHeight);
        pop();
    }

    // public void red(float x, float y, float rectWidth, float rectHeight) {
    //     fill(255,0,0);
    //     rectMode(CORNER);
    //     rect(x, y, rectWidth, rectHeight);
    //     fill(255);
    // }

    // public void red(float x, float y, float rectWidth, float rectHeight) {
    //     fill(0,255,0);
    //     rectMode(CORNER);
    //     rect(x, y, rectWidth, rectHeight);
    //     fill(255);
    // }
}