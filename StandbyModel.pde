public class StandbyModel {
    Cardbox cardbox;
    StandbyIterator iterator;

    StandbyModel(){
        cardbox = new Cardbox();
        iterator = cardbox.iterator();    
    }

    void makeNewCard(String text){
        cardbox.appendCard(new Card(text));
    }

    Card makeCard() {
        if (iterator.hasNext()){
            return (Card)iterator.next();
        } else {
            return (Card)iterator.initialize();
            
        }
    }
}