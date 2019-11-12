public class CardPositionModel {
    PVector[][] grid = new PVector[2][2];
    PVector v1, v2, v3, v4;
    
    CardPositionModel() {
        PVector v1 = new PVector(width * 0.06, height * 0.1);
        PVector v2 = new PVector(width * 0.55, height * 0.1);
        PVector v3 = new PVector(width * 0.06, height * 0.55);
        PVector v4 = new PVector(width * 0.55, height * 0.55);
        PVector[][] grid = {{v1, v2}, {v3, v4}};
        this.grid = grid;
    }

    PVector getPosition(int i) {
        switch(i) {
            case 0:
                return grid[0][0];
            case 1:
                return grid[0][1];
            case 2:
                return grid[1][0];
            case 3:
                return grid[1][1];
            default:
                return grid[0][0];
        }    
    }

    CardPositionModel getCardPositionModel() {
        return this;
    }

    

}