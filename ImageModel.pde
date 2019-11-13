private class ImageModel {
    ArrayList<PImage> imgList = new ArrayList<PImage>();
    PImage img;
    TextModel imgFileName;
    ImageModel(String nameFileName) {
        Model contentModel = getContentModel();
        this.imgFileName = contentModel.getTextModel(nameFileName);
        // imgFileName.makeStringList();
        imgFileName.acquireElementList("pic_name");
    }

    public ArrayList<PImage> getImageList() {
        return imgList;
    }

    public int getImageListLength() {
        return imgList.size();
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