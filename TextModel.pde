public class TextModel {
    private ArrayList<String> str;
    private String filename, json_text;
    private JSONArray json_array;
    private JSONObject json_object, small_JSONObject;
    private String[] text;
    

    TextModel(String file) {
        this.filename = file;   
    }

    public ArrayList<String> acquireElement(String arrayName, String tag) {
        str = new ArrayList<String>();
        json_object = loadJSONObject(filename);
        json_array = json_object.getJSONArray(arrayName);
        for (int iter = 0; iter < json_array.size(); iter++) {
            small_JSONObject = json_array.getJSONObject(iter);
            json_text = small_JSONObject.getString(tag);
            str.add(json_text);
        }
        return str;
    }

   
   
    public int getLength(){
        return str.size();
    }

    public ArrayList<String> getStringList(){
        return str;
    }

    public String getEachString(int index) {
        return str.get(index);
    }
}