class StandbyState extends State {
  PFont font;
  Model contentModel = getContentModel();
  StandbyModel standbyModel = new StandbyModel();
  ArrayList<Card> cardArray;
  int x, y;
  CardAnimation animation = new CardAnimation();
  Card card;

  StandbyState(){
    font = createFont("HiraMaruProN-W4", 30);
    standbyModel.setCard();
    cardArray = standbyModel.makeCard();
    for (int i = 0; i < cardArray.size(); i++) {
      animation.setAnimation(cardArray.get(i));
    }
    
    
  }
  
  

  void drawState() {
    background(0,255,255);
    textAlign(CENTER, CENTER);
    textFont(font);
    fill(255);
    text("待機State", width/2, height/2);
    cardArray = standbyModel.timeControl();
    for (int j = 0; j < cardArray.size(); j++) {
      card = standbyModel.timeControl().get(j);
      card.displayRect();
      card.displayImage();
    }
    
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
    repeating phaseの描画
  **/
  void drawRepeatingPhase(){

  }

  /**
    debug modeの場合の描画
  **/
  void debugDrawState(){
    
  }
}
