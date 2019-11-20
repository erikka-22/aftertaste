public class JLayeredPaneModel {
    JLayeredPane pane;
    Canvas canvas;
    JTextField field;
    JRadioButton look, speak;     
    float textbox_x = width * 0.06;
    float textbox_y = height * 0.025;
 
    JLayeredPaneModel() {
        canvas = (Canvas) surface.getNative();
        pane = (JLayeredPane) canvas.getParent().getParent();
        field = new JTextField();
        field.setBounds(int(textbox_x), int(textbox_y), 100, 50);
        look = new JRadioButton("見る", false);
        speak = new JRadioButton("話す", false);
        look.setBounds(int(textbox_x), int(textbox_y + 50), 100, 50);
        speak.setBounds(int(textbox_x), int(textbox_y + 100), 100, 50);
    }

    JLayeredPane getPane() {
        return pane;
    }

    JLayeredPaneModel getJLayeredPaneModel() {
        return this;
    }

    JTextField getTextfield() {
        return field;
    }

    JRadioButton getLook() {
        return look;
    }

    JRadioButton getSpeak() {
        return speak;
    }


    void removePane() {
        pane.remove(field);
        pane.remove(look);
        pane.remove(speak);
    }
}