public class CSVModel {
    private String[] csvDataLine, csvDataCell;
    private String[][] csvDataContent;
    private String filename;
    

    CSVModel(String file) {
        
        this.filename = file;
        csvDataLine = loadStrings(filename);
    }

    public String[] getCSVDataLine() {
        return csvDataLine;
    }

    public int getColumnLength() {
        return csvDataLine.length;
    }
        
    public String get_csvdata_cell(int columnSize, int row, int column) {
        csvDataContent = new String[csvDataLine.length][columnSize];
        for (int i = 0; i < csvDataLine.length; i++) {
            csvDataCell = split(csvDataLine[i], ',');
            for (int j = 0; j < csvDataCell.length; j++) {
                csvDataContent[i][j] = csvDataCell[j];
            }
        }
        return csvDataContent[row][column];
    }

    public CSVModel getCSVModel() {
        return this;
    }

}