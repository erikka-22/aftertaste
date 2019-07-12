class RegistrationState extends State {
    PFont font;
    Model contentModel = getContentModel();
    TextModel textModel = contentModel.getTextModel("test.json");

    RegistrationState(){
        textModel.makeStringList();
        font = createFont("HiraMaruProN-W4", 30);
    }
    void drawState() {
        background(0,255,255);
        textAlign(CENTER, CENTER);
        textFont(font);
        text("登録State", width/2, height/2);
        text(textModel.getEachString(0), width/3, height/3);
    }


}