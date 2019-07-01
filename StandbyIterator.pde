public interface StandbyIterator {
    public abstract boolean hasNext();
    public abstract Object next();
    public abstract Object initialize();
}