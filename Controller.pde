class Controller{
    WebsocketServer wss = getWss();
    Model contentModel = getContentModel();
    ReceivedDataModel receivedDataModel = contentModel.getReceivedDataModel();
    
    Controller(){
    }

    void switch_to_standby_state(){ 
        contentModel.setEndingPhase(false);
        receivedDataModel.deleteData();
        contentModel.setState(new StandbyState());
    }

    void switch_to_voiceinput_state(){
        receivedDataModel.deleteData();
        wss.sendMessage("connected");
        contentModel.setState(new VoiceinputState());
    }
    
    void switch_to_registration_state(){
        wss.sendMessage("end");         
        contentModel.setState(new RegistrationState());
    }

    void switch_to_exhiroom_state(){         
        contentModel.setState(new ExhiRoomState());
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
}