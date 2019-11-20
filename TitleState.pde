class TitleState extends State {
  PFont font;
  Model contentModel = getContentModel();
  TitleView view = new TitleView();
  Button button = new Button(0, width/2, height/2, 100, color(190, 100, 70));

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
    push();
    textAlign(CENTER, CENTER);
    textFont(font);
    fill(0);
    textSize(60);
    text("デジタル タイム カプセル", width/2, height * 0.15);
    pop();
    view.drawTimeCapsule();
    // button.run();
    // switch(button.rogic()) {
    //   case 0:
    //     break;
    //   case 1:
    //     print("button on");
    //     break;
    //   case 2:
    //     if (button.isPush()) {
    //       print("button pushed");
    //     }
    // }
  }
  
  /**
    debug modeの場合の描画
  **/
  void debugDrawState() {

  }
}
