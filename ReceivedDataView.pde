public class ReceivedDataView {
    Model contentModel = getContentModel();
    ReceivedDataModel receivedDataModel = contentModel.getReceivedDataModel();
    ReceivedDataView() {

    }

    public void display(float startX, float startY, int state) {
        fill(0);
        int lines = 0;
        int charPerLine = 0;
        float lineSpacing = 40;
        for (int i = 0; i < receivedDataModel.getLength(); i++) {
            switch(state){
                case 0:
                    if ((i - charPerLine + 1) * 40 > (width - startX)) {
                        lines += 1;
                        charPerLine = i;
                    }
                    break;
                case 1:
                    if ((i - charPerLine + 1) * 40 > (width / 3)) {
                        lines += 1;
                        charPerLine = i;
                    }
                    break;
            }            
            text(receivedDataModel.getEachCharacter(i), (i - charPerLine) * 40 + startX, startY + lines * lineSpacing);
        }
    }
}

