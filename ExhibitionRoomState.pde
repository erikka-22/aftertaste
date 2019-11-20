class ExhibitionRoomState extends State {
    Model model = getContentModel();
    Controller controller = new Controller();
    ExhibitionButtonModel button_model = model.getExhibitionButtonModel(); 
    ExhibitionRoomView exhi_view = new ExhibitionRoomView();
    UserIDModel id = contentModel.getUserIDModel();
    JLayeredPaneModel jlayer = contentModel.getJLayeredPaneModel();
   
    Button button;
    
    float textbox_x = width * 0.06;
    float textbox_y = height * 0.025;
   
    JLayeredPane pane;
    JTextField field;
    JRadioButton look, speak;
    ExhibitionRoomState() {
        background(200,200,200);
        
        pane = jlayer.getPane();

        // 1行のみのテキストボックスを作成
        field = jlayer.getTextfield();
        look = jlayer.getLook();
        speak = jlayer.getSpeak();
        pane.add(field);
        pane.add(look);
        pane.add(speak);
    }

    void drawStartingPhase(){
        print("start");
    }
  
    /**
        ending phaseの描画
    **/
    void drawEndingPhase(){
        pane.remove(look);
        pane.remove(speak);
        pane.remove(field);
        if (speak.isSelected() == true) {
            id.setUserID(field.getText());
            wss.sendMessage(str(button_model.getSelectNow()));
            wss.sendMessage(id.getUserID());
            controller.switch_to_voiceinput_state();
        } else {
            controller.switch_to_standby_state();
        }
    }

    /**
        repeating phaseの描画
    **/
    void drawRepeatingPhase(){
        print("repeat");
    }

    void drawState() {
        exhi_view.indicate_exhiroom_picture();
        for (int i = 0; i < button_model.button_list.size(); i++) {
            button = button_model.getButton(i);
            button.run();
            if (button.checkInMouse() == true) {
                // print("in a circle");
                button_model.select_now = button.getExhibitionID();
                // print(button_model.select_now);
            }
        }
        
        
    }
    
    /**
        debug modeの場合の描画
    **/
    void debugDrawState(){

    }


}