public class Cardbox implements StandbyAggregate {
    private ArrayList<Card> cards;

    public Cardbox(){
        this.cards = new ArrayList<Card>();
    }   
    
    public Card getCardAt(int index) {
        return (Card)cards.get(index);
    }

    public void appendCard(Card card) {
        cards.add(card);
    }

    public int getLength() {
        return cards.size();
    }

    public StandbyIterator iterator() {
        return new CardboxIterator(this);
    }
}