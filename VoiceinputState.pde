class VoiceinputState extends State {
    PFont font;
    Model model = getContentModel();
    Controller controller = new Controller();
    ReceivedDataView view = new ReceivedDataView();
    ReceivedDataModel r_model = model.getReceivedDataModel();
    DrawWave wave = new DrawWave();
    WebsocketServer wss = getWss();

  VoiceinputState(){
    font = createFont("HiraMaruProN-W4", 30);
  }

  void drawState() {
    background(255,255,255);
    wave.displayWave();
    view.displayVoice(width * 0.15, 100);
    
  }

  /**
    starting phaseの描画
  **/
  void drawStartingPhase(){
    wss.sendMessage("connected");
    controller.switch_to_drawing_phase();
  }
  
  /**
    ending phaseの描画
  **/
  void drawEndingPhase(){
    wss.sendMessage("end");  
    controller.switch_to_registration_state();  
  }

  /**
    repeating phaseの描画
  **/
  void drawRepeatingPhase(){
    r_model.deleteData();
    wss.sendMessage("end");  
    controller.switch_to_standby_state();
  }
}