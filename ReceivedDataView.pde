public class ReceivedDataView {
    Model contentModel = getContentModel();
    ReceivedDataModel receivedDataModel = contentModel.getReceivedDataModel();
    ReceivedDataView() {

    }

    public void display(float start, float y) {
        fill(0);
        for (int i = 0; i < receivedDataModel.getLength(); i++) {
            text(receivedDataModel.getEachCharacter(i), i * 20 + start, y);
        }
    }

    

}

