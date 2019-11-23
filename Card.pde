public class Card {
    Model contentModel = getContentModel();
    JSONModel textModel = contentModel.getJSONModel("test.json");
    CardPositionModel position = contentModel.getCardPositionModel();
    String text;
    PImage img;
    JSONObject card_content;
    Rect rect = new Rect();

    public Card(JSONObject card_content) {
        this.card_content = card_content;
    }

    public JSONObject getThisCard() {
        return card_content;
    }

    public void displayText(float x, float y) {
        push();
        fill(0);
        textAlign(LEFT, TOP);
        text(card_content.getString("comment"), x + 210, y + 20, width * 0.29, height * 0.35);
        pop();
    }

    public void displayRect(float x, float y) {
        rect.display(x, y, width * 0.4, height * 0.4);       
    }

    public void displayImage(float x, float y) {
        image(loadImage(card_content.getString("pic_name")), x, y);
    }
}