public class ReceivedDataView {
    Model contentModel = getContentModel();
    ReceivedDataModel receivedDataModel = contentModel.getReceivedDataModel();
    ReceivedDataView() {

    }

    public void display() {
        for (int i = 0; i < receivedDataModel.getLength(); i++) {
            text(receivedDataModel.getEachCharacter(i), i * 20, 100);
        }
    }

}

