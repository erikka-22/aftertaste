class ExhibitionRoomState extends State {
    Model model = getContentModel();
    Controller controller = new Controller();
    ExhibitionButtonModel button_model = model.getExhibitionButtonModel(); 
    ExhibitionRoomView exhi_view = new ExhibitionRoomView();
    UserIDModel id = contentModel.getUserIDModel();
    JLayeredPaneModel jlayer = contentModel.getJLayeredPaneModel();
    CSVModel csv = new CSVModel("exhibit_location.csv");
    CSVModel pic_name_list = new CSVModel("picture_name.csv");
    JSONModel json = model.getJSONModel("test.json");
    ExhibitLocationModel exhi_posi = new ExhibitLocationModel();
   
    Button button;
    Button button_rect;

    boolean userid_iscollect = false;
    
   
    JLayeredPane pane;
    JTextField field;
    JRadioButton look, speak;
    ExhibitionRoomState() {
        
        pane = jlayer.getPane();

        // 1行のみのテキストボックスを作成
        field = jlayer.getTextfield();
        look = jlayer.getLook();
        speak = jlayer.getSpeak();
        // if (pane)
        pane.add(field);
        pane.add(look);
        pane.add(speak);
        button_rect = new Button(100, jlayer.textbox_x * 2.5, jlayer.textbox_y * 2, 100, 50);
    }

    void drawStartingPhase(){
        button_model.deleteSelectNow();
        
        controller.switch_to_drawing_phase();
    }

    void drawState() {
        background(200,200,200);
        exhi_view.timeControl();
        exhi_view.indicate_exhiroom_picture();
        button_rect.display_rect();
        if (button_rect.checkInMouse_rect() == true) {
            print("ボタン");
            id.setUserID(field.getText());
            if (id.getUserID().equals("") == false) {
                for (int iter = 0; iter < pic_name_list.getColumnLength(); iter++){
                    if(id.getUserID().equals(pic_name_list.get_csvdata_cell(1,iter,0)) == true) {//一致チェック
                        userid_iscollect = true;
                    }
                }
                if (userid_iscollect == false) {
                    push();
                    fill(0);
                    print("無効");
                    textSize(20);
                    text("無効なIDです", jlayer.textbox_x, jlayer.textbox_y);
                    pop();
                }
            }
        }
        push();
        fill(0);
        textSize(25);
        text("ID", jlayer.textbox_x - 40, jlayer.textbox_y + 25);
        translate(width / 2, height / 2);
        for (int j = 26; j < 29; j++) {
            text(csv.get_csvdata_cell(4, j, 1), exhi_posi.get_exhibit_location(j).x - 150, exhi_posi.get_exhibit_location(j).y + 10);
        }
        pop();
        for (int i = 0; i < button_model.button_list.size(); i++) {
            button = button_model.getButton(i);
            button.display_circle();
            if (button.checkInMouse() == true) {
                print(button.getExhibitionID());
                button_model.select_now = button.getExhibitionID();
            }
        }
        
    }
    

   
  
    /**
        ending phaseの描画
    **/
    void drawEndingPhase(){
        jlayer.removePane();
        if (speak.isSelected() == true) {
            id.setUserID(field.getText());
            wss.sendMessage("z" + str(button_model.getSelectNow()));
            print("*" + str(button_model.getSelectNow()));
            delay(100);
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
        jlayer.removePane();
        controller.switch_to_exhiroom_state();
    }

    
        
        
    
    /**
        debug modeの場合の描画
    **/
    void debugDrawState(){

    }


}