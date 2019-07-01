public class TextModel {
    private ArrayList<String> str;
    private String filename;
    private JSONArray json;


    TextModel() {
        str = new ArrayList<String>();
        filename = "test.json";
    }

    public void loadText(){
        json = loadJSONArray(filename);
        for (int i = 0; i < json.size(); i++){
            str.add(json.getString(i));
        }
    }

    public int getLength(){
        return str.size();
    }

    public String getText(int index){ 
        return str.get(index);
    }
}