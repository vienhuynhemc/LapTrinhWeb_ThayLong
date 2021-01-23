package beans.rate;

import beans.DateTime;

public class Rate {
    private String idProduct;
    private String idCustomer;
    private String content;
    private int numberStar;
    private int status;
    private DateTime dateCreated;

    public Rate(){

    }

    public Rate(String idProduct, String idCustomer, String content, int numberStar, int status, DateTime dateCreated) {
        this.idProduct = idProduct;
        this.idCustomer = idCustomer;
        this.content = content;
        this.numberStar = numberStar;
        this.status = status;
        this.dateCreated = dateCreated;
    }

    public String getIdProduct() {
        return idProduct;
    }

    public void setIdProduct(String idProduct) {
        this.idProduct = idProduct;
    }

    public String getIdCustomer() {
        return idCustomer;
    }

    public void setIdCustomer(String idCustomer) {
        this.idCustomer = idCustomer;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getNumberStar() {
        return numberStar;
    }

    public void setNumberStar(int numberStar) {
        this.numberStar = numberStar;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public DateTime getDateCreated() {
        return dateCreated;
    }

    public void setDateCreated(DateTime dateCreated) {
        this.dateCreated = dateCreated;
    }

    @Override
    public String toString() {
        return "Rate{" +
                "idProduct='" + idProduct + '\'' +
                ", idCustomer='" + idCustomer + '\'' +
                ", content='" + content + '\'' +
                ", numberStart=" + numberStar +
                ", status=" + status +
                ", dateCreated=" + dateCreated +
                '}';
    }
}
