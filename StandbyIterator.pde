public interface StandbyIterator {
    public abstract boolean hasNext();
    public abstract Object next();
    public abstract Object initialize();
    public abstract Object thisCard();
    public abstract Object first();
}