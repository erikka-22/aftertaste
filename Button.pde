public class Button {
    float center_x, center_y;
    float vertical, horizontal;
    float distance_exhi, distance_pointer;
    int state, exhibition_id;
    PVector local_mouse;

    color baseCol;
    float nb;
    float sb;
    float pb;

    String str;

    Button(int exhibition_id, float center_x, float center_y, float vertical, float horizontal) {
        this.exhibition_id = exhibition_id;
        this.center_x=center_x;
        this.center_y=center_y;
        this.vertical=vertical;
        this.horizontal=horizontal;

    }

    void display_circle() {
        changeColor();
        push();
        translate(width / 2, height / 2);
        noStroke();
        ellipse(center_x, center_y, vertical, horizontal);
        pop();    
    }

    void display_rect() {
        // changeColor();
        push();
        fill(255);
        noStroke();
        rectMode(CENTER);
        textAlign(CENTER);
        textSize(20);
        rect(center_x, center_y, vertical, horizontal);
        fill(0);
        text("入力完了", center_x, center_y);
        pop();    
    }

    int rogic() {
        // state=checkState();
        return state;
    }

    //===================================================================
    boolean isPush() {
        // if (checkState()==2) return true;
        return false;
    }

    PVector screenToLocal(float x, float y) {
        pushMatrix();
        translate(width / 2, height / 2);
        PVector in = new PVector(x, y);
        PVector out = new PVector();
        PMatrix2D current_matrix = new PMatrix2D();
        getMatrix(current_matrix);  
        current_matrix.invert();
        current_matrix.mult(in, out);
        popMatrix();
        return out;
    } 

    boolean checkInMouse() {
        PVector local_mouse = screenToLocal(mouseX, mouseY);
        float area_X = vertical / 2;
        float area_Y = horizontal / 2; 
        if (local_mouse.x >= (center_x - area_X) && local_mouse.x < (center_x + area_X) && local_mouse.y >= (center_y - area_Y) && local_mouse.y < (center_y + area_Y)) {
            return true;    
        }
        return false;
    }

    boolean checkInMouse_rect() {
        float area_X = vertical / 2;
        float area_Y = horizontal / 2; 
        if (mouseX >= (center_x - area_X) && mouseX < (center_x + area_X) && mouseY >= (center_y - area_Y) && mouseY < (center_y + area_Y)) {
            return true;    
        }
        return false;
    }


    int getExhibitionID() {
        return exhibition_id;
    }

    void changeColor() {
        if (checkInMouse() == true) {
            fill(153, 0, 0);
        } else {
            fill(0, 51, 102);
        }
    }
}