import websockets.*;
import ddf.minim.*;
import javax.swing.*;
import java.awt.*;

//ユーザ環境で使えるフォント一覧取得
String[] fontList = PFont.list();
Model contentModel;
Controller contentController;
WebsocketServer wss;
ReceivedDataModel receivedDataModel;
MousePushModel mousePushModel;
ExhibitionButtonModel buttonModel;
Button button;

void setup() {
  // fullScreen();
  size(1920, 1200);

  wss= new WebsocketServer(this, 5000, "/");
  
  contentModel = new Model();
  contentModel.setState(new TitleState());
  // print(contentModel.getState());
  contentController = new Controller();
  receivedDataModel = contentModel.getReceivedDataModel();
  mousePushModel = contentModel.getMousePushModel();
  buttonModel = contentModel.getExhibitionButtonModel();

  //フレームレート
  frameRate(10);
}

void draw() {
  contentModel.stateExecute();
}

void webSocketServerEvent(String msg) {
  receivedDataModel.addData(msg);
}

Model getContentModel(){
  return contentModel;
}

PApplet getPApplet(){
  return this;
}

WebsocketServer getWss() {
  return wss;
}

//キー入力の監視
void keyPressed(){
  println("[LOG] Key Pressed " + keyCode + " \"" + char(keyCode) + "\"");
  contentModel.setKeyState(keyCode, true);
  switch (keyCode) {
    case 83: //s
      contentController.switch_to_drawing_phase();
      contentController.switch_to_standby_state();
      break;
    case 70: //f
      contentController.switch_to_drawing_phase();
      contentController.switch_to_voiceinput_state();
      break;
    case 72: //h
      contentController.switch_to_drawing_phase();
      contentController.switch_to_registration_state();
      break;
    case 69: //e
      contentController.switch_to_drawing_phase();
      contentController.switch_to_exhiroom_state();
      break;  
    case 65: //a
      contentController.switch_to_ending_phase();
      break;
    case 81: //q
      contentController.removeJLayeredPane();
  }
}
void keyReleased(){
  println("[LOG] Key Released " + keyCode + " \"" + char(keyCode) + "\"");
  contentModel.setKeyState(keyCode, false);
}
void keyTyped(){
  println("[LOG] Key Typed " + keyCode);
}
// //マウス操作の監視
void mouseClicked(){
  switch(mousePushModel.getModelNumber()) {
    case 1:
      if (buttonModel.getSelectNow() != 0) {
        contentController.switch_to_ending_phase();
      }
      break;
    default:
      println("[LOG] Mouse Clicked " + mouseButton + " x,y=(" + mouseX + "," + mouseY + ")");
      break;
  }
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
