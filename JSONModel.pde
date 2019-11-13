public class JSONModel {
    private ArrayList<String> str;
    private String filename, json_text;
    private JSONArray json_array;
    private JSONObject json_object, object;
    private String[] text, csvDataLine, csvDataCell;
    

    JSONModel(String file) {
        this.filename = file;
        json_array = loadJSONArray(filename);   
    }

    public JSONObject returnJSONObject(int order) {
        object = json_array.getJSONObject(order);
        return object;
    }

    public ArrayList<String> acquireElementList(String key_name) {
        str = new ArrayList<String>();
        for (int iter = 0; iter < json_array.size(); iter++) {
            json_object = returnJSONObject(iter);
            json_text = json_object.getString(key_name);
            str.add(json_text);
        }
        return str;
    }

    public int getJSONArrayLength() {
        return json_array.size();
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

    public get_csvdata_cell() {
        
    }
}