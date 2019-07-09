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

    Card makeCard() {
        if (iterator.hasNext()){
            return (Card)iterator.next();
        } else {
            return (Card)iterator.initialize();       
        }
    }

    Card thisCard() {
        return (Card)iterator.thisCard();
    }

    Card firstCard() {
        return (Card)iterator.first();
    }
     
    Card timeControl() {
        print(interval);
        if (millis() - lastRecordedTime > interval) {
            lastRecordedTime = millis();
            return makeCard();
        } else {
            print(lastRecordedTime);
            return thisCard();
        }
    } 
}