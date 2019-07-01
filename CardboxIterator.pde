public class CardboxIterator implements StandbyIterator {
    private Cardbox cardbox;
    private int index;
    public CardboxIterator(Cardbox cardbox) {
        this.cardbox = cardbox;
        this.index = 0;
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
        index++;
        return card;
    }

    public Object initialize() {
        index = 0;
        Card card = cardbox.getCardAt(index);
        index++;
        return card;
    }
}