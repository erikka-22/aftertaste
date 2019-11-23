class StandbyState extends State {
  Model contentModel = getContentModel();
  StandbyModel standbyModel = contentModel.getStandbyModel();
  CardPositionModel position = contentModel.getCardPositionModel();
  UserIDModel id = contentModel.getUserIDModel();
  Controller controller = new Controller();
  JLayeredPaneModel jlayer = contentModel.getJLayeredPaneModel();
  CSVModel csv = new CSVModel("exhibit_location.csv");
  ExhibitionButtonModel button_model = contentModel.getExhibitionButtonModel();

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
    // cardArray = standbyModel.firstCardSet();

    pane = jlayer.getPane();
    
    // 1行のみのテキストボックスを作成
    field = jlayer.getTextfield();
    pane.add(field);
    print();
  }
  
  void drawStartingPhase(){
    // print(id.getUserID());
    controller.switch_to_drawing_phase();
  }

  void drawState() { 
    
    push(); 
    fill(0);
    text("ID", jlayer.textbox_x - 30, jlayer.textbox_y + 15);
    textAlign(CENTER);
    if (button_model.getSelectNow() != 0 && button_model.getSelectNow() != 28) {
      text(csv.get_csvdata_cell(4, button_model.getSelectNow(), 1), width * 0.5, height * 0.05);  
    } else {
      text("全ての展示物について", width * 0.5, height * 0.05);
    }
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
  
  
  /**
    ending phaseの描画
  **/
  void drawEndingPhase(){
    wss.sendMessage("z" + str(button_model.getSelectNow()));
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
    pane.remove(field);
    controller.switch_to_exhiroom_state();
  }

  /**
    debug modeの場合の描画
  **/
  void debugDrawState(){
    
  }


}
