import de.looksgood.ani.*;

/**
* 環境変数
*/

// JSONObject json;

//ユーザ環境で使えるフォント一覧取得
String[] fontList = PFont.list();
Model contentModel;
Controller contentController;



void setup() {
  size(1600, 900);
  
  Ani.init(this);
  //printArray(fontList);

  //設定ファイルが必要であればここから読みこむ
  // json = loadJSONObject("config.json");
  // println(json.getString("id"));
  // json.setString("id", "oguri");
  // saveJSONObject(json, "config.json");
  
  contentModel = new Model();
  contentModel.setState(new TitleState());
  contentController = new Controller();

  

  //フレームレート
  frameRate(60);
}

void draw() {
  contentModel.stateExecute();
}

Model getContentModel(){
  return contentModel;
}

PApplet getPApplet(){
  return this;
}

//キー入力の監視
void keyPressed(){
  println("[LOG] Key Pressed " + keyCode + " \"" + char(keyCode) + "\"");
  contentModel.setKeyState(keyCode, true);
  switch (key) {
    case 's':
      contentController.switch_to_standby_state();
      break;
    case 'v':
      contentController.switch_to_voiceinput_state();
      break;
    case 'r':
      contentController.switch_to_registration_state();
  }
}
void keyReleased(){
  println("[LOG] Key Released " + keyCode + " \"" + char(keyCode) + "\"");
  contentModel.setKeyState(keyCode, false);
}
void keyTyped(){
  println("[LOG] Key Typed " + keyCode);
}
//マウス操作の監視
void mouseClicked(){
  println("[LOG] Mouse Clicked " + mouseButton + " x,y=(" + mouseX + "," + mouseY + ")");
}
void mouseDragged(){
  println("[LOG] Mouse Dragged " + "x,y=(" + mouseX + "," + mouseY + ")");
}
void mouseMoved(){
  println("[LOG] Mouse Moved " + "x,y=(" + mouseX + "," + mouseY + ")");
}
void mousePressed(){
  println("[LOG] Mouse Pressed " + mouseButton + " x,y=(" + mouseX + "," + mouseY + ")");
}
void mouseReleased(){
  println("[LOG] Mouse Released " + mouseButton + " x,y=(" + mouseX + "," + mouseY + ")");
}
void mouseWheel(){
  println("[LOG] Mouse Wheel " + "x,y=(" + mouseX + "," + mouseY + ")");
}
