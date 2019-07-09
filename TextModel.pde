public class TextModel {
    private ArrayList<String> str;
    private String filename;
    private JSONArray json;


    TextModel() {
        
        
    }

    public ArrayList<String> loadText(String filename){  
        json = new JSONArray();
        str = new ArrayList<String>();
        
        json = loadJSONArray(filename);
        for (int i = 0; i < json.size(); i++){
            str.add(json.getString(i));
        }
        // print(str);
        return str;
    }

    public int getLength(String filename){
        return loadText(filename).size();
    }

    public String getText(String filename, int index){
        // print(filename);
        return loadText(filename).get(index);
    }
}