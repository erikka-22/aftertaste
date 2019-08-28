public class ReceivedDataView {
    Model contentModel = getContentModel();
    ReceivedDataModel receivedDataModel = contentModel.getReceivedDataModel();
    ReceivedDataView() {

    }

    public void displayRegistration(float startX, float startY) {
        fill(0);
        int lines = 0;
        int charPerLine = 0;
        float lineSpacing = 40;
        for (int i = 0; i < receivedDataModel.getLength(); i++) {
            if ((i - charPerLine + 1) * 40 > (width / 3)) {
                lines += 1;
                charPerLine = i;
            }
            text(receivedDataModel.getEachCharacter(i), (i - charPerLine) * 40 + startX, startY + lines * lineSpacing);
        }
    }

    public void displayVoice(float startX, float startY) {
        fill(0);
        int lines = 0;
        int charPerLine = 0;
        float lineSpacing = 40;
        if (receivedDataModel.getLength() == 0) {
            text("どんなところが面白かったですか？", startX + 200, 50);
        } else {
            for (int i = 0; i < receivedDataModel.getLength(); i++) {
                if ((i - charPerLine + 1) * 40 > (width - startX)) {
                    lines += 1;
                    charPerLine = i;
                }      
                text(receivedDataModel.getEachCharacter(i), (i - charPerLine) * 40 + startX, startY + lines * lineSpacing);
            }
        }
        
    }
}

