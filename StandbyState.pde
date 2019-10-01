class StandbyState extends State {
  PFont font;
  Model contentModel = getContentModel();
  StandbyModel standbyModel = new StandbyModel();
  CardAnimation animation = new CardAnimation();
  CardPositionModel position = new CardPositionModel();
  ArrayList<Card> cardArray;
  int x, y;
  Card card;

  StandbyState(){
    font = createFont("HiraMaruProN-W4", 30);
    standbyModel.setCard();
    cardArray = standbyModel.makeCard();
    // animation.setAnimation(cardArray.get(0));
  }
  
  

  void drawState() {
    background(200,200,200);
    textAlign(CENTER, CENTER);
    textFont(font);
    cardArray = standbyModel.timeControl();
    // if (standbyModel.getFlag() == true) {
    //   animation.setAnimation(cardArray.get(0));
    // }
    for (int j = 0; j < cardArray.size(); j++) {
      card = cardArray.get(j);
      card.displayRect(position.getPosition(j).x, position.getPosition(j).y);
      card.displayImage(position.getPosition(j).x, position.getPosition(j).y);
      card.displayText(position.getPosition(j).x, position.getPosition(j).y);
    }
    
  }
  
 
  /**
    starting phaseの描画
  **/
  void drawStartingPhase(){
    
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
