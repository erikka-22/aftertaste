public class Model {
    boolean DEBUG_MODE = false;

    private State state;
    //private Phase phase = new Phase();
    private KeyStatus keyStatus = new KeyStatus();
    private TextModel textModel = new TextModel();
    private ImageModel imageModel = new ImageModel();


    Model(){
        state = new TitleState();

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

    public ArrayList<String> loadText(String filename){
        return textModel.loadText(filename);
    }

    public int getLength(String filename){
        return textModel.getLength(filename);
    }
    
    public String getText(String filename, int index) {
        return textModel.getText(filename, index);
    }

    public PImage getImage(String nameFileName, int index) {
        return imageModel.getImage(nameFileName, index);
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

