class RegistrationState extends State {
    PFont font;
    ReceivedDataView view = new ReceivedDataView();
    Model contentModel = getContentModel();
    ReceivedDataModel receivedDataModel = contentModel.getReceivedDataModel();
    Rect rect = new Rect();
    PImage img;

    RegistrationState(){
        font = createFont("HiraMaruProN-W4", 30);
        img = loadImage("black.png");
    }

    void drawState() {
        background(255,255,255);
        rect.colors(width / 2, height / 2, width * 0.5, height / 2, 255, 255, 255);
        fill(0);
        text("これでいいですか？", width / 2, height / 6);
        view.display(width * 0.4, height * 0.3);
        rect.colors(width * 0.2, height * 0.85, width * 0.2, height * 0.1, 255, 0, 0);
        rect.colors(width * 0.8, height * 0.85, width * 0.2, height * 0.1, 0, 255, 0);
        image(img, width * 0.3, height * 0.4);
        fill(0);
        text("はい", width * 0.15, height * 0.83);
        text("いいえ", width * 0.75, height * 0.83);
        
    }

    /**
    starting phaseの描画
    **/
    void drawStargingPhase(){

    }
    
    /**
        ending phaseの描画
    **/
    void drawEndingPhase(){

    }

    /**
        repeating phaseの描画
    **/
    void drawRepeatingPhase(){
        receivedDataModel.deleteData();
    }

}