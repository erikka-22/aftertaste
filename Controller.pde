class Controller{

    Model contentModel = getContentModel();

    Controller(){
    }

    void switch_to_standby_state(){
        contentModel.setState(new StandbyState());
    }
    void switch_to_voiceinput_state(){
        contentModel.setState(new VoiceinputState());
    }
    void switch_to_registration_state(){
        contentModel.setState(new RegistrationState());
    }
}