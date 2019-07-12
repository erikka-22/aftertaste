class Controller{
    WebsocketServer wss = getWss();
    Model contentModel = getContentModel();
    ReceivedDataModel receivedDataModel = contentModel.getReceivedDataModel();
    Controller(){
    }

    void switch_to_standby_state(){
        wss.sendMessage("end"); 
        receivedDataModel.deleteData();
        contentModel.setState(new StandbyState());
    }
    void switch_to_voiceinput_state(){
        contentModel.setState(new VoiceinputState());
    }
    void switch_to_registration_state(){        
        contentModel.setState(new RegistrationState());
    }
}