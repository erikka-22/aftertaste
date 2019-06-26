public class KeyStatus{
  HashMap<Integer, Boolean> Key;

  KeyStatus(){
    this.Key = new HashMap<Integer, Boolean>();
    this.Key.put(RIGHT, false);
    this.Key.put(LEFT, false);
    this.Key.put(UP, false);
    this.Key.put(DOWN, false);
    this.Key.put(ALT, false);
    this.Key.put(SHIFT, false);
    this.Key.put(CONTROL, false);
  }
  
  boolean getState(int code){
    return this.Key.get(code);
  }
  
  void setState(int code, boolean state){
    this.Key.put(code, state);
  }
}