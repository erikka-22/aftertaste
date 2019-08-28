public class CardAnimation {
    AniSequence seq = new AniSequence(getPApplet());
    CardPositionModel position = new CardPositionModel();
    

    CardAnimation() {            

    }
        public void setAnimation(Object object) {
            
            seq.beginSequence();
            seq.add(Ani.to(object, 2, "x", position.getPosition(1).x));
            seq.add(Ani.to(object, 2, "y", position.getPosition(3).y));
            seq.add(Ani.to(object, 2, "x", position.getPosition(2).x));
            seq.add(Ani.to(object, 2, "y", height * 1.2));
            seq.endSequence();
            seq.start();
        }

     
}