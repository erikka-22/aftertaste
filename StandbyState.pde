class StandbyState extends State {
  PFont font;
  Model contentModel = getContentModel();
  StandbyModel standbyModel = new StandbyModel();
  
  StandbyState(){
    font = createFont("HiraMaruProN-W4", 30);
    for (int i = 0; i < contentModel.getLength(); i++){
      standbyModel.makeNewCard(contentModel.getText(i));
    }
  }
  
  

  void drawState() {
    Card card = standbyModel.makeCard();
    background(0,255,255);
    textAlign(CENTER, CENTER);
    textFont(font);
    text("待機State", width/2, height/2);
    text(card.getName(), width/3, height/3);
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
