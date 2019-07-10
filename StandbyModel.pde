public class StandbyModel {
    Cardbox cardbox = new Cardbox();
    StandbyIterator iterator;
    Model contentModel = getContentModel();
    int interval, lastRecordedTime;
    



    StandbyModel() {   
        iterator = cardbox.iterator(); 
        interval = 5000;
        lastRecordedTime = 0;
  
    }

    Cardbox getCardbox() {
        return cardbox;
    }

    void makeNewCard(String text, PImage img){
        cardbox.appendCard(new Card(text, img));
    }
    
    void setCard() {
        for (int i = 0; i < contentModel.getLength("test.json"); i++){
            makeNewCard(contentModel.getText("test.json", i), contentModel.getImage("icons.json", i));
        }
    }

    ArrayList<Card> makeCard() {
        if (iterator.hasNext()){
            return (ArrayList<Card>)iterator.next();
        } else {
            return (ArrayList<Card>)iterator.initialize();       
        }
    }

    ArrayList<Card> thisCard() {
        return (ArrayList<Card>)iterator.thisCard();
    }

    Card firstCard() {
        return (Card)iterator.first();
    }
     
    ArrayList<Card> timeControl() {
        if (millis() - lastRecordedTime > interval) {
            lastRecordedTime = millis();
            return makeCard();
        } else {
            
            return thisCard();
        }
    } 
}