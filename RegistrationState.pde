class RegistrationState extends State {
    PFont font;
    Model contentModel = getContentModel();

    RegistrationState(){
        font = createFont("HiraMaruProN-W4", 30);
    }
    void drawState() {
        background(0,255,255);
        textAlign(CENTER, CENTER);
        textFont(font);
        text("登録State", width/2, height/2);
        text(contentModel.getText("test.json", 0), width/3, height/3);
    }


}