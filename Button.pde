public class Button {
    float center_x, center_y;
    float diameter;
    float distance_exhi, distance_pointer;
    int state, exhibition_id;
    PVector local_mouse;

    color baseCol;
    float nb;
    float sb;
    float pb;

    String str;

    Button(int exhibition_id, float center_x, float center_y, float diameter, color baseCol) {
        this.exhibition_id = exhibition_id;
        this.center_x=center_x;
        this.center_y=center_y;
        this.diameter=diameter;
        this.baseCol=baseCol;
      

        nb=1; //normalBrightness
        sb=0.8; //selectBrightness
        pb=0.6; //pushBrightness
    }

    void run() {
        
        checkInMouse();
        display();
        
    }

    void display() {
        push();
        translate(width / 2, height / 2);
        noStroke();
        changeColor();
        ellipse(center_x, center_y, diameter, diameter);;
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
        float hankei = diameter / 2; 
        // print(local_mouse.x);
        // print(local_mouse.y);
        if (local_mouse.x >= (center_x - hankei) && local_mouse.x < (center_x + hankei) && local_mouse.y >= (center_y - hankei) && local_mouse.y < (center_y + hankei)) {
            return true;    
        }
        return false;
    }

    int getExhibitionID() {
        return exhibition_id - 1;
    }

    void changeColor() {
        switch(state) {
        case 0:
        fill(hue(baseCol), saturation(baseCol), brightness(baseCol)*nb);
        break;

        case 1:
        fill(hue(baseCol), saturation(baseCol), brightness(baseCol)*sb);
        break;

        case 2:
        fill(hue(baseCol), saturation(baseCol), brightness(baseCol)*pb);
        break;

        default:
        fill(0, 0, 0);
        break;
        }
    }
}