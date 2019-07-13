private class ImageModel {
    ArrayList<PImage> imgList = new ArrayList<PImage>();
    PImage img;
    ArrayList<String> str;
    TextModel imgFileName;
    ImageModel(String nameFileName) {
        Model contentModel = getContentModel();
        this.imgFileName = contentModel.getTextModel(nameFileName);
        imgFileName.makeStringList();
    }

    public ArrayList<PImage> getImageList() {
        return imgList;
    }

    public PImage getEachImage(int index) {
        return imgList.get(index);
    }

    public void makeImageList() {
        for (int i = 0; i < imgFileName.getLength(); i++) {
            img = loadImage(imgFileName.getEachString(i));
            imgList.add(img);
        }
        
    }

    
}