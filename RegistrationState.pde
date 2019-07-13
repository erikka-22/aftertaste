class RegistrationState extends State {
    PFont font;
    ReceivedDataView view = new ReceivedDataView();

    RegistrationState(){
        
        font = createFont("HiraMaruProN-W4", 30);
    }
    void drawState() {
        background(0,255,255);
        text("これでいいですか？", width/2, height/2);
        text(textModel.getEachString(0), width/3, height/3);
    }


}