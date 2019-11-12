public class UserIDModel {
    String userID = "";

    UserIDModel() {

    }

    UserIDModel getUserIDModel() {
        return this;
    }

    String getUserID() {
        return userID;
    }

    void setUserID(String input) {
        userID = input;
        print(userID);
    }

}
