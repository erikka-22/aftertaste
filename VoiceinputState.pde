class VoiceinputState extends State {
    PFont font;
    Model contentModel = getContentModel();
    ReceivedDataModel receivedDataModel = contentModel.getReceivedDataModel();
    DrawWave wave = new DrawWave();
    WebsocketServer wss = getWss();

  VoiceinputState(){
    font = createFont("HiraMaruProN-W4", 30);
    wss.sendMessage("connected"); 
      
  }

  void drawState() {
    background(255,0,255);
    wave.displayWave();
    for (int i = 0; i < receivedDataModel.getLength(); i++) {
      text(receivedDataModel.getEachCharacter(i), i * 20, 100);
    }
  }

  
}