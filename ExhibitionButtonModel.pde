public class ExhibitionButtonModel {
    Model contentModel = getContentModel();
    ArrayList<Button> button_list = new ArrayList<Button>();
    ExhibitLocationModel exhi_model = new ExhibitLocationModel();
    int button_number, select_now;
    Button button;

    ExhibitionButtonModel() {
        for (int i = 1; i < exhi_model.get_vector_list_length(); i++) {
            button_list.add(new Button(i, exhi_model.get_exhibit_location(i).x, exhi_model.get_exhibit_location(i).y, 30, 255));
        }
    }

    Button getButton(int button_number) {
        return button_list.get(button_number);
    } 

    int getSelectNow() {
        return select_now;
    }   

    void deleteSelectNow() {
        select_now = 0;
    }

    ExhibitionButtonModel getExhibitionButtonModel() {
        return this;
    }
}