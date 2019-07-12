public class Model {
    boolean DEBUG_MODE = false;

    private State state;
    //private Phase phase = new Phase();
    private KeyStatus keyStatus = new KeyStatus();
    private TextModel textModel;
    private ImageModel imageModel;
    private ReceivedDataModel receivedDataModel;

    Model(){
        state = new TitleState();
        receivedDataModel = new ReceivedDataModel();

    }

    //State
    public State getState(){
        return state;
    }
    public void setState(State newState){
        state = newState;
    }
    public void stateExecute(){
        state.execute();
    }
      
    //フェーズ
    // public Phase getPhase(){
    //     return phase;
    // }
    // public void setPhase(){

    // }

    public TextModel getTextModel(String filename) {
        textModel = new TextModel(filename);
        return textModel ;
    }

    public ImageModel getImageModel(String filename) {
        imageModel = new ImageModel(filename);
        return imageModel ;
    }

    public ReceivedDataModel getReceivedDataModel() {
        return receivedDataModel.getReceivedDataModel();
    }
    
    //デバッグモード
    public boolean getDebugMode(){
        return DEBUG_MODE;
    }
    public void setDebugMode(){
        DEBUG_MODE = !DEBUG_MODE;
    }
    public void setDebugMode(boolean mode){
        DEBUG_MODE = mode;
    }

    //キー入力
    public boolean getKeyStatus(int code){
        return keyStatus.getState(code);
    }
    public void setKeyState(int code, boolean state){
        keyStatus.setState(code, state);
    }

}

