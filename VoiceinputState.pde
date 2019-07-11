class VoiceinputState extends State {
    PFont font;
    Model contentModel = getContentModel();
    DrawWave wave = new DrawWave();

  VoiceinputState(){
    font = createFont("HiraMaruProN-W4", 30);
   
      
  }

  void drawState() {
    background(255,0,255);
    wave.displayWave();
  }
}