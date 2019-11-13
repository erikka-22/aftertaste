class ExhibitionRoomState extends State {
    ExhibitionRoomView exhi_view = new ExhibitionRoomView();


    ExhibitionRoomState() {
        background(200,200,200);
        
    }

    void drawStartingPhase(){
        print("start");
    }
  
    /**
        ending phaseの描画
    **/
    void drawEndingPhase(){
        print("end");
    }

    /**
        repeating phaseの描画
    **/
    void drawRepeatingPhase(){
        print("repeat");
    }

    void drawState() {
        exhi_view.indicate_exhiroom_picture();
        exhi_view.pinup_exhibit_location();
    }
    
    /**
        debug modeの場合の描画
    **/
    void debugDrawState(){

    }


}