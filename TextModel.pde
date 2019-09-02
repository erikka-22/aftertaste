public class TextModel {
    private ArrayList<String> str;
    private String filename;
    private JSONArray json;
    private String[] text;


    TextModel(String filename) {
        this.filename = filename;   
    }

     public ArrayList<String> makeStringList(){  
        json = new JSONArray();
        str = new ArrayList<String>();
        
        json = loadJSONArray(filename);
        for (int i = 0; i < json.size(); i++){
            str.add(json.getString(i));
        }
        // print(str);
        return str;
    }

    public ArrayList<String> makeText(){  
        // json = new JSONArray();
        str = new ArrayList<String>();
        text = loadStrings(filename);
        for (int i = 0; i < text.length; i++){
            str.add(text[i]);
        }
        // print(str);
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