public class ExhibitLocationModel {
    float diameter = height / 2;
    Model contentModel = getContentModel();
    CSVModel csv = new CSVModel("exhibit_location.csv");
    String[] csvLine = csv.getCSVDataLine();
    PVector[] vectors;

    ExhibitLocationModel() {
        vectors = new PVector[csvLine.length];
        for (int i = 1; i < csvLine.length; i++) {
            vectors[i] = new PVector(diameter * float(csv.get_csvdata_cell(4, i, 2)), diameter * float(csv.get_csvdata_cell(4, i, 3)));
            // print(vectors[i]);
        }
    }

    PVector get_exhibit_location(int pvector_order) {
        return vectors[pvector_order];    
    }

    int get_vector_list_length() {
        return vectors.length;
    }

    ExhibitLocationModel getExhibitLocationModel() {
        return this;
    }
}