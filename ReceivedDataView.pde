public class ReceivedDataView {
    Model contentModel = getContentModel();
    ReceivedDataModel receivedDataModel = contentModel.getReceivedDataModel();
    ReceivedDataView() {

    }

    public void display(float start, float y) {
        fill(0);
        int lines = 0;
        int charPerLine = 0;
        float lineSpacing = 40;
        for (int i = 0; i < receivedDataModel.getLength(); i++) {
            if ((i - charPerLine + 1) * 40 > (width - start)) {
                lines += 1;
                charPerLine = i;
            }
            text(receivedDataModel.getEachCharacter(i), (i - charPerLine) * 40 + start, y + lines * lineSpacing);
        }
    }
}

