class RegistrationState extends State {
    PFont font;
    ReceivedDataView view = new ReceivedDataView();
    Model contentModel = getContentModel();
    ReceivedDataModel receivedDataModel = contentModel.getReceivedDataModel();
    Rect rect = new Rect();

    RegistrationState(){
        receivedDataModel.makeTestData();
        font = createFont("HiraMaruProN-W4", 30);
    }
    void drawState() {
        background(0,255,255);
        rect.display(width / 4, height / 4, width / 5, height / 5);
        fill(255);
        text("これでいいですか？", width/2, height/2);
        view.display(width / 4, height / 4);
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

    }

}