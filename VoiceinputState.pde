class VoiceinputState extends State {
    PFont font;
    Model contentModel = getContentModel();

  VoiceinputState(){
    font = createFont("HiraMaruProN-W4", 30);
  }
  void drawState() {
    background(255,0,255);
    textAlign(CENTER, CENTER);
    textFont(font);
    text("入力State", width/2, height/2);
    text(contentModel.getText(1), width/3, height/3);
  }

}