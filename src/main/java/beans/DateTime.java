package beans;

public class DateTime {

    //  Lớp này đại diện cho thuộc tính datatime trong mysql
    private int year;
    private int month;
    private int day;
    private int hour;
    private int minute;
    private int second;

    //  Constuctor nhận vào đầy đủ
    public DateTime(int year, int month, int day, int hour, int minute, int second) {
        this.year = year;
        this.month = month;
        this.day = day;
        this.hour = hour;
        this.minute = minute;
        this.second = second;
    }

    //  Constructor nhận vào String
    public DateTime(String dateTime) {
        String[] dateTimes = dateTime.split(" ");
        String[] dates = dateTimes[0].split("-");
        String[] times = dateTimes[1].split(":");
        this.year = Integer.parseInt(dates[0]);
        this.month = Integer.parseInt(dates[1]);
        this.day = Integer.parseInt(dates[2]);
        this.hour = Integer.parseInt(times[0]);
        this.minute = Integer.parseInt(times[1]);
        this.second = (int) (Double.parseDouble(times[2]));
    }

    //  Constructor rỗng
    public DateTime() {
    }

    //  To string all
    public String toString() {

        String stringMonth = month + "";
        if (stringMonth.length() == 1) stringMonth = "0" + stringMonth;
        String stringDay = day + "";
        if (stringDay.length() == 1) stringDay = "0" + stringDay;
        String stringHour = hour + "";
        if (stringHour.length() == 1) stringHour = "0" + stringHour;
        String stringMinute = minute + "";
        if (stringMinute.length() == 1) stringMinute = "0" + stringMinute;
        String stringSecond = second + "";
        if (stringSecond.length() == 1) stringSecond = "0" + stringSecond;

        return year + "-" + stringMonth + "-" + stringDay + " " + stringHour + ":" + stringMinute + ":" + stringSecond;

    }

    //  To value input type = datetimelocal
    public String toStringDateTimeLocal(){

        String stringMonth = month + "";
        if (stringMonth.length() == 1) stringMonth = "0" + stringMonth;
        String stringDay = day + "";
        if (stringDay.length() == 1) stringDay = "0" + stringDay;
        String stringHour = hour + "";
        if (stringHour.length() == 1) stringHour = "0" + stringHour;
        String stringMinute = minute + "";
        if (stringMinute.length() == 1) stringMinute = "0" + stringMinute;
        String stringSecond = second + "";
        if (stringSecond.length() == 1) stringSecond = "0" + stringSecond;

        return year + "-" + stringMonth + "-" + stringDay + "T" + stringHour + ":" + stringMinute + ":" + stringSecond;

    }



    //  To string dạng 26 Tháng Tám 2020
    public String toStringDateTypeNumberStringNumber() {

        //  Chuyển tháng từ số sang dạng chuỗi
        String mm = null;

        switch (this.month) {
            case 1:
                mm = "Tháng Một";
                break;
            case 2:
                mm = "Tháng Hai";
                break;
            case 3:
                mm = "Tháng Ba";
                break;
            case 4:
                mm = "Tháng Tư";
                break;
            case 5:
                mm = "Tháng Năm";
                break;
            case 6:
                mm = "Tháng Sáu";
                break;
            case 7:
                mm = "Tháng Bảy";
                break;
            case 8:
                mm = "Tháng Tám";
                break;
            case 9:
                mm = "Tháng Chín";
                break;
            case 10:
                mm = "Tháng Mười";
                break;
            case 11:
                mm = "Tháng Mời Một";
                break;
            case 12:
                mm = "Tháng Mười Hai";
                break;
        }

        String stringDay = day + "";
        if (stringDay.length() == 1) {
            stringDay = "0" + stringDay;
        }

        //  return về dạng mình mong muốn
        return stringDay + " " + mm + " " + year;

    }

    //  Getter and setter
    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public int getMonth() {
        return month;
    }

    public void setMonth(int month) {
        this.month = month;
    }

    public int getDay() {
        return day;
    }

    public void setDay(int day) {
        this.day = day;
    }

    public int getHour() {
        return hour;
    }

    public void setHour(int hour) {
        this.hour = hour;
    }

    public int getMinute() {
        return minute;
    }

    public void setMinute(int minute) {
        this.minute = minute;
    }

    public int getSecond() {
        return second;
    }

    public void setSecond(int second) {
        this.second = second;
    }

}
