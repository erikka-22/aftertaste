public class CardboxIterator implements StandbyIterator {
    private Cardbox cardbox;
    private int index;
    private ArrayList<Card> cardArray = new ArrayList<Card>();
    
    public CardboxIterator(Cardbox cardbox) {
        this.cardbox = cardbox;
        this.index = 4;
        this.cardArray = cardArray;
    }

    public boolean hasNext() {
        if (index < cardbox.getLength()){
            return true;
        } else {
            return false;
        }
    }

    public Object next() {
        Card card = cardbox.getCardAt(index);

        cardArray.add(0, card);
        if (cardArray.size() > 4) {
            cardArray.remove(cardArray.size() - 1);
        }
        index++;
        return cardArray;
    }

    public Object initialize() {
        index = 0;
        Card card = cardbox.getCardAt(index);
        cardArray.add(0, card);
        if (cardArray.size() > 4) {
            cardArray.remove(cardArray.size() - 1);
        }
        index++;
        return cardArray;
    }

    public Object thisCard() {
        return cardArray;
    }

    public Object first() {
        for (int i = 0; i < 4; i++){
            Card card = cardbox.getCardAt(i);
            cardArray.add(0, card);
        }
        return cardArray;
    }
}