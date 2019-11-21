class Controller{
    WebsocketServer wss = getWss();
    Model contentModel = getContentModel();
    ReceivedDataModel receivedDataModel = contentModel.getReceivedDataModel();
    MousePushModel mousePushModel = contentModel.getMousePushModel();
    JLayeredPaneModel jlayer = contentModel.getJLayeredPaneModel();
    Controller(){
    }

    void switch_to_standby_state(){ 
        switch_to_starting_phase();
        mousePushModel.setMouseModelNumber(0);
        receivedDataModel.deleteData();
        contentModel.setState(new StandbyState());
    }

    void switch_to_voiceinput_state(){
        contentModel.setEndingPhase(false);
        mousePushModel.setMouseModelNumber(0);
        receivedDataModel.deleteData();
        wss.sendMessage("connected");
        contentModel.setState(new VoiceinputState());
    }
    
    void switch_to_registration_state(){
        contentModel.setEndingPhase(false);
        mousePushModel.setMouseModelNumber(0);
        wss.sendMessage("end");         
        contentModel.setState(new RegistrationState());
    }

    void switch_to_exhiroom_state(){       
        switch_to_starting_phase();
        mousePushModel.setMouseModelNumber(1);
        contentModel.setState(new ExhibitionRoomState());
    }

    void switch_to_ending_phase() {
        contentModel.setEndingPhase(true);
    }

    void switch_to_repeating_phase() {
        contentModel.setRepeatingPhase(true);
    }

    void switch_to_starting_phase() {
        contentModel.setEndingPhase(false);
        contentModel.setRepeatingPhase(false);
        contentModel.setStartingPhase(true);
    }

    void switch_to_drawing_phase() {
        contentModel.setEndingPhase(false);
        contentModel.setRepeatingPhase(false);
        contentModel.setStartingPhase(false);
    }

    void removeJLayeredPane() {
        jlayer.removePane();
    }
}