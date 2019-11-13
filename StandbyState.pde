class StandbyState extends State {
  
  JLayeredPane pane;
  Canvas canvas;
  JTextField field;

  Model contentModel = getContentModel();
  StandbyModel standbyModel = contentModel.getStandbyModel();
  CardPositionModel position = contentModel.getCardPositionModel();
  UserIDModel id = contentModel.getUserIDModel();
  Controller controller = new Controller();
  
  PFont font;
  ArrayList<Card> cardArray;
  int x, y;
  Card card;

  float textbox_x = width * 0.06;
  float textbox_y = height * 0.025;

  StandbyState(){
    canvas = (Canvas) surface.getNative();
    pane = (JLayeredPane) canvas.getParent().getParent();
  
    font = createFont("HiraMaruProN-W4", 30);
        
    background(200,200,200);
    textAlign(CENTER, CENTER);
    textFont(font);

    standbyModel.setCard();
    cardArray = standbyModel.firstCardSet();

    // 1行のみのテキストボックスを作成
    field = new JTextField();
    field.setBounds(int(textbox_x), int(textbox_y), 100, 50);
    pane.add(field);
  }
  
  void drawState() {  
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
