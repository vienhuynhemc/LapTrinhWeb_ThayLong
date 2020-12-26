package beans.category;

import beans.DateTime;

import java.sql.Date;
import java.sql.Time;

public class Category {

    //  Mã danh mục
    private String id;

    //  Tên danh mục
    private String name;

    //  Ngày giờ tạo danh mục
    private DateTime dateCreated;

    //  Trạng thái hiệu lục
    private int exist;

    //  Constructor
    public Category(String id, String name, DateTime dateCreated, int exist) {
        setId(id);
        this.name = name;
        this.dateCreated = dateCreated;
        this.exist = exist;
    }
    public Category(){

    }

    //  To Sting
    public String toString() {
        return id + " " + name + " " + dateCreated + " " + exist;
    }

    //  Getter and setter
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }


    public int isExist() {
        return exist;
    }

    public void setExist(int exist) {
        this.exist = exist;
    }

    public DateTime getDateCreated() {
        return dateCreated;
    }

    public void setDateCreated(DateTime dateCreated) {
        this.dateCreated = dateCreated;
    }
}
