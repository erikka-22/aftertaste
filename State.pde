abstract class State {
  Model contentModel = getContentModel();

  
  State() {
  }

  void execute() {
    if(contentModel.getStartingPhase()){
      drawStargingPhase();
    } else if(contentModel.getEndingPhase()){
      drawEndingPhase();
    } else if (contentModel.getRepeatingPhase()) {
      drawRepeatingPhase();
    } else {
    //   //描画
      drawState();
    }
    //デバッグモード
    // if(DEBUG_MODE){
    //   debugDrawState();
    // }
  }

  /**
    starting phaseの描画
  **/
  abstract void drawStargingPhase();
  
  // /**
  //   ending phaseの描画
  // **/
  abstract void drawEndingPhase();
  
  /**
    starting phaseの描画
  **/
  abstract void drawRepeatingPhase();
  
  /**
    default phaseの描画
  **/
  abstract void drawState();

  /**
    debug modeの場合の描画
  **/
  // abstract void debugDrawState();
}
