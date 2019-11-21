public class StandbyModel {
    Cardbox cardbox = new Cardbox();
    StandbyIterator iterator;
    Model contentModel = getContentModel();
    WebsocketServer wss = getWss();
    int interval, lastRecordedTime;
    JSONModel txt = contentModel.getJSONModel("test.json");
    boolean flag = false;
    ExhibitionButtonModel exhi_button = contentModel.getExhibitionButtonModel();

    StandbyModel() {
        // txt.acquireElement("comments", "comment");
        // image.makeImageList();   
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

    void makeNewCard(JSONObject card_content){
        switch(exhi_button.getSelectNow()) {
            case 0:
                cardbox.appendCard(new Card(card_content));
                break;
            default:
                if (int(card_content.getString("exhi_id")) == exhi_button.getSelectNow()) {
                    cardbox.appendCard(new Card(card_content));
                }
                break;
        }
        
        
    }
    
    void setCard() {
        for (int i = 0; i < txt.getJSONArrayLength(); i++){
            makeNewCard(txt.returnJSONObject(i));
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