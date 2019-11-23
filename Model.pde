public class Model {
    boolean STARTING_PHASE = false;
    boolean ENDING_PHASE = false;
    boolean DEBUG_MODE = false;
    boolean REPEATING_PHASE = false;

    private State state;
    //private Phase phase = new Phase();
    private KeyStatus keyStatus = new KeyStatus();
    private JSONModel textModel;
    private ReceivedDataModel receivedDataModel;
    private UserIDModel userIDModel;
    private CardPositionModel cardPositionModel;
    private StandbyModel standbyModel;
    private ExhibitLocationModel exhiModel;
    private MousePushModel mousePushModel;
    private ExhibitionButtonModel exhibitionButtonModel;
    private JLayeredPaneModel jlayer;


    Model(){
        state = new TitleState();
        receivedDataModel = new ReceivedDataModel();
        cardPositionModel = new CardPositionModel();
        userIDModel = new UserIDModel();
        mousePushModel = new MousePushModel();
        exhibitionButtonModel = new ExhibitionButtonModel();
        exhiModel = new ExhibitLocationModel();
        jlayer = new JLayeredPaneModel();
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
    public boolean getStartingPhase(){
        return STARTING_PHASE;
    }

    public boolean getEndingPhase(){
        return ENDING_PHASE;
    }

    public boolean getRepeatingPhase(){
        return REPEATING_PHASE;
    }

    public void setStartingPhase(boolean mode) {
        STARTING_PHASE = mode;
    }

    public void setEndingPhase(boolean mode) {
        ENDING_PHASE = mode;
    }

    public void setRepeatingPhase(boolean mode) {
        REPEATING_PHASE = mode;
    }

    

    // 子モデル

    public JSONModel getJSONModel(String filename) {
        textModel = new JSONModel(filename);
        return textModel;
    }

    public StandbyModel getStandbyModel() {
        standbyModel = new StandbyModel();
        return standbyModel;
    }

    public ExhibitLocationModel getExhibitLocationModel() {
        return exhiModel.getExhibitLocationModel();
    }

    public ReceivedDataModel getReceivedDataModel() {
        return receivedDataModel.getReceivedDataModel();
    }

    public UserIDModel getUserIDModel() {
        return userIDModel.getUserIDModel();
    }
    
    public CardPositionModel getCardPositionModel() {
        return cardPositionModel.getCardPositionModel();
    }

    public MousePushModel getMousePushModel() {
        return mousePushModel.getMousePushModel();
    }

    public ExhibitionButtonModel getExhibitionButtonModel() {
        return exhibitionButtonModel.getExhibitionButtonModel();
    }

    public JLayeredPaneModel getJLayeredPaneModel() {
        return jlayer.getJLayeredPaneModel();
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
