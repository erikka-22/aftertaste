class TitleState extends State {
  PFont font;
  Model contentModel = getContentModel();

  TitleState(){
    font = createFont("HiraMaruProN-W4", 30);
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

  void drawState() {
    background(100);
    textAlign(CENTER, CENTER);
    textFont(font);
    text("タイトルState", width/2, height/2);
    text(contentModel.getTime(), width/3, height/3);
  }
  
  /**
    debug modeの場合の描画
  **/
  void debugDrawState(){

  }
}
