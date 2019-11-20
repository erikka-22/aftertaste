class StandbyState extends State {
  Model contentModel = getContentModel();
  StandbyModel standbyModel = contentModel.getStandbyModel();
  CardPositionModel position = contentModel.getCardPositionModel();
  UserIDModel id = contentModel.getUserIDModel();
  Controller controller = new Controller();
  JLayeredPaneModel jlayer = contentModel.getJLayeredPaneModel();

  JLayeredPane pane;
  JTextField field;

  PFont font;
  ArrayList<Card> cardArray;
  int x, y;
  Card card;

  
  StandbyState(){
    
    font = createFont("HiraMaruProN-W4", 30);
        
    background(200,200,200);
    textAlign(CENTER, CENTER);
    textFont(font);

    standbyModel.setCard();
    cardArray = standbyModel.firstCardSet();

    pane = jlayer.getPane();

    // 1行のみのテキストボックスを作成
    field = jlayer.getTextfield();
    pane.add(field);
  }
  
  void drawState() { 
    push(); 
    fill(0);
    text("ID", jlayer.textbox_x - 30, jlayer.textbox_y + 15);
    pop();
    cardArray = standbyModel.timeControl();
    for (int j = 0; j < cardArray.size(); j++) {
      card = cardArray.get(j);
      // print(card.getThisCard());
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
    id.setUserID(field.getText());
    wss.sendMessage(id.getUserID());
    pane.remove(field);
    delay(500);
    controller.switch_to_voiceinput_state();
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
