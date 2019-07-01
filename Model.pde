public class Model {
    boolean DEBUG_MODE = false;

    private State state;
    //private Phase phase = new Phase();
    private KeyStatus keyStatus = new KeyStatus();
    private TimerModel timerModel = new TimerModel();
    private TextModel textModel = new TextModel();

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

    public int getTime(){
        return timerModel.getTime();
    }

    public void loadText(){
        textModel.loadText();
    }

    public int getLength(){
        return textModel.getLength();
    }
    
    public String getText(int index) {
        return textModel.getText(index);
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

