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
    background(255,0,255);
    wave.displayWave();
    view.display();
    
  }

  
}