abstract class State {
  Model contentModel = getContentModel();

  boolean STARTING_PHASE = false;
  boolean ENDING_PHASE = false;
  boolean DEBUG_MODE = false;

  State() {
  }

  void execute() {
    // if(STARTING_PHASE){
    //   drawStargingPhase();
    // } else if(ENDING_PHASE){
    //   drawEndingPhase();
    // } else {
    //   //描画
      drawState();
    // }
    //デバッグモード
    // if(DEBUG_MODE){
    //   debugDrawState();
    // }
  }

  /**
    starting phaseの描画
  **/
  // abstract void drawStargingPhase();
  
  // /**
  //   ending phaseの描画
  // **/
  // abstract void drawEndingPhase();

  /**
    default phaseの描画
  **/
  abstract void drawState();

  /**
    debug modeの場合の描画
  **/
  // abstract void debugDrawState();
}
