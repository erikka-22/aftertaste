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
    smooth(2);
    text("タイトルState", width/2, height/2);
  }
  
  /**
    debug modeの場合の描画
  **/
  void debugDrawState(){

  }
}
