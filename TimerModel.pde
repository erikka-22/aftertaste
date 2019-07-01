public class TimerModel{
    private int time;


    TimerModel(){
        time = 0;
    }

    public int getTime(){
        time = millis();
        return time;
    }

}