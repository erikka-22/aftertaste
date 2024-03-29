public class StandbyModel {
    Cardbox cardbox = new Cardbox();
    StandbyIterator iterator;
    Model contentModel = getContentModel();
    WebsocketServer wss = getWss();
    int interval, lastRecordedTime;
    TextModel txt = contentModel.getTextModel("test.json");
    ImageModel image = contentModel.getImageModel("test.json");
    boolean flag = false;

    StandbyModel() {
        txt.acquireElement("comments", "comment");
        // txt.getStringList();
        image.makeImageList();   
        iterator = cardbox.iterator(); 
        interval = 5000;
        lastRecordedTime = 0;  
    }

    Cardbox getCardbox() {
        return cardbox;
    }

    int getLength() {
        print(cardbox.getLength());
        return cardbox.getLength();
    }

    void makeNewCard(String text, PImage img){
        cardbox.appendCard(new Card(text, img));
    }
    
    void setCard() {
        for (int i = 0; i < txt.getLength(); i++){
            makeNewCard(txt.getEachString(i), image.getEachImage(i));
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

    ArrayList<Card> firstCardSet() {
        return (ArrayList<Card>)iterator.first();
    }
     
    ArrayList<Card> timeControl() {
        if (millis() - lastRecordedTime > interval) {
            lastRecordedTime = millis();
            flag = true;
            wss.sendMessage("");
            return makeCard();
        } else {
            flag = false;
            return thisCard();
        }
    }

    boolean getFlag() {
        return flag;
    } 
}