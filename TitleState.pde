class TitleState extends State {
  PFont font;
  Model contentModel = getContentModel();
  // Controller controller = new Controller();
  TitleView view = new TitleView();
 
  TitleState(){
    font = createFont("HiraMaruProN-W4", 60);
  }
  /**
    starting phaseの描画
  **/
  void drawStartingPhase(){
    // controller.switch_to_drawing_phase();
    print("start");
  }
  
  /**
    ending phaseの描画
  **/
  void drawEndingPhase(){
    // controller.switch_to_exhiroom_state();
  }

  /**
    repeating phaseの描画
  **/
  void drawRepeatingPhase(){
    // controller.switch_to_title_state();
  }

  void drawState() {
    background(255);
    push();
    textAlign(CENTER, CENTER);
    textFont(font);
    fill(0);
    textSize(60);
    text("デジタル タイム カプセル", width/2, height * 0.15);
    pop();
    view.drawTimeCapsule();
    
  }
  
  /**
    debug modeの場合の描画
  **/
  void debugDrawState() {

  }
}
