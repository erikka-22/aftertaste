class VoiceinputState extends State {
    PFont font;
    
    ReceivedDataView view = new ReceivedDataView();
    DrawWave wave = new DrawWave();
    WebsocketServer wss = getWss();

  VoiceinputState(){
    font = createFont("HiraMaruProN-W4", 30);
    wss.sendMessage("connected"); 
      
  }

  void drawState() {
    background(255,255,255);
    wave.displayWave();
    view.display(100, 100);
    
  }

  /**
    starting phaseの描画
  **/
  void drawStargingPhase(){

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