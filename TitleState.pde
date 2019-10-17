class TitleState extends State {
  PFont font;
  Model contentModel = getContentModel();
  
  TitleView view = new TitleView();

  TitleState(){
    font = createFont("HiraMaruProN-W4", 60);
    
  }
  /**
    starting phaseの描画
  **/
  void drawStartingPhase(){
    print("start");
  }
  
  /**
    ending phaseの描画
  **/
  void drawEndingPhase(){
    print("end");
  }

  /**
    repeating phaseの描画
  **/
  void drawRepeatingPhase(){
    print("repeat");
  }

  void drawState() {
    background(255);
    textAlign(CENTER, CENTER);
    textFont(font);
    fill(0);
    textSize(60);
    text("デジタル タイム カプセル", width/2, height * 0.15);
    view.drawTimeCapsule();
    
  }
  
  /**
    debug modeの場合の描画
  **/
  void debugDrawState(){

  }
}
