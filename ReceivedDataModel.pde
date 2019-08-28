public class ReceivedDataModel {
    ArrayList<String>  receivedData;
    int i;
    ReceivedDataModel() {
        receivedData = new ArrayList<String>();
    }
    public ArrayList<String> getReceivedData() {
        return receivedData;
    } 
    
    public int getLength() {
        return receivedData.size();
    }

    public String getEachCharacter(int index) {
        return receivedData.get(index);
    }

    public void addData(String msg) {
        receivedData.add(msg);
    }

    public void deleteData() {
        receivedData = new ArrayList<String>();
    }

    public ReceivedDataModel getReceivedDataModel() {
        return this;
    }

    public void makeTestData() {
        receivedData.add("自然の恵が美味しい");
        receivedData.add("やさしく飲みやすい軟水です");
    }
}