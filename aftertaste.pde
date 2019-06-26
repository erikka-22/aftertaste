/**
* 環境変数
*/

JSONObject json;

//ユーザ環境で使えるフォント一覧取得
String[] fontList = PFont.list();
Model contentModel;

void setup() {
  size(1600, 900);
  //printArray(fontList);

  //設定ファイルが必要であればここから読みこむ
  json = loadJSONObject("config.json");
  println(json.getString("id"));
  json.setString("id", "oguri");
  saveJSONObject(json, "config.json");
  
  contentModel = new Model();

  //フレームレート
  frameRate(60);
}

void draw() {
  contentModel.stateExecute();
}

Model getContentModel(){
  return contentModel;
}

//キー入力の監視
void keyPressed(){
  println("[LOG] Key Pressed " + keyCode + " \"" + char(keyCode) + "\"");
  contentModel.setKeyState(keyCode, true);
  switch (keyPressed) {
    case "n":
      contentModel.setState(new GameState());
      break;
    case "b":
      break;	
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
