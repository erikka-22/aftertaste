class StandbyState extends State {
  PFont font;
  Model contentModel = getContentModel();
  Cardbox cardbox;
  StandbyIterator iterator;

  StandbyState(){
    font = createFont("HiraMaruProN-W4", 30);
    cardbox = new Cardbox();
    cardbox.appendCard(new Card("Hi!"));
    iterator = cardbox.iterator();
  }
  
  void drawState() {
    // while(iterator.hasNext()){
    //   Card card = (Card)iterator.next();
    // }
    background(0,255,255);
    textAlign(CENTER, CENTER);
    textFont(font);
    text("待機State", width/2, height/2);
    text(contentModel.getText(0), width/3, height/3);
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
