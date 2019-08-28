class TitleState extends State {
  PFont font;
  Model contentModel = getContentModel();
  PImage img;

  TitleState(){
    font = createFont("HiraMaruProN-W4", 60);
    img = loadImage("asala.png");
  }
  /**
    starting phaseの描画
  **/
  void drawStargingPhase(){
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
    background(100);
    textAlign(CENTER, CENTER);
    textFont(font);
    text("デジタル タイム カプセル", width/2, height/4);
    image(img, width/2, height/2);
  }
  
  /**
    debug modeの場合の描画
  **/
  void debugDrawState(){

  }
}
