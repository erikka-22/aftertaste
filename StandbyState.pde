class StandbyState extends State {
  PFont font;
  Model contentModel = getContentModel();
  StandbyModel standbyModel = new StandbyModel();
  Card card;
  CardAnimation animation;
  int x;

  StandbyState(){
    font = createFont("HiraMaruProN-W4", 30);
    standbyModel.setCard();
    card = standbyModel.makeCard();
    animation.setAnimation();
  }
  
  

  void drawState() {
    background(0,255,255);
    textAlign(CENTER, CENTER);
    textFont(font);
    fill(255);
    text("待機State", width/2, height/2);
    card = standbyModel.timeControl();
    card.displayRect(x);
    card.displayImage(x);
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
  
  /**
    debug modeの場合の描画
  **/
  void debugDrawState(){
    
  }
}
