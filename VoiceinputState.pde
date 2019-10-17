class VoiceinputState extends State {
    PFont font;
    
    ReceivedDataView view = new ReceivedDataView();
    DrawWave wave = new DrawWave();
    WebsocketServer wss = getWss();

  VoiceinputState(){
    font = createFont("HiraMaruProN-W4", 30);
  }

  void drawState() {
    background(255,255,255);
    wave.displayWave();
    view.displayVoice(width * 0.2, 100);
    
  }

  /**
    starting phaseの描画
  **/
  void drawStartingPhase(){

  }
  
  /**
    ending phaseの描画
  **/
  void drawEndingPhase(){

  }

  /**
    repeating phaseの描画
  **/
  void drawRepeatingPhase(){

  }
}