public class ReceivedDataView {
    Model contentModel = getContentModel();
    ReceivedDataModel receivedDataModel = contentModel.getReceivedDataModel();
    ReceivedDataView() {

    }

    public void displayRegistration(float startX, float startY, int fontsize) {
        fill(0);
        int lines = 0;
        int charPerLine = 0;
        float lineSpacing = 40;
        textSize(fontsize);
        for (int i = 0; i < receivedDataModel.getLength(); i++) {
            if ((i - charPerLine + 1) * (fontsize + fontsize / 3) > (width * 0.4)) {
                lines += 1;
                charPerLine = i;
            }
            text(receivedDataModel.getEachCharacter(i), (i - charPerLine) * (fontsize + fontsize / 3) + startX, startY + lines * lineSpacing);
        }
        textSize(30);
    }

    public void displayVoice(float startX, float startY) {
        fill(0);
        int lines = 0;
        int charPerLine = 0;
        float lineSpacing = 40;
        if (receivedDataModel.getLength() == 0) {
            push();
            textAlign(CENTER);
            text("どんなところが面白かったですか？", width / 2, 50);
            pop();
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

    // public void displayAlart() {
    //     text("あと15秒で話し終えてね！", );
    // }
}

