
package entity;

import java.util.Date;

public class Rate {
    private String rateID;
    private int customerID;
    private int productID;
    private String comment;
    private float rate;
    private String date;

    public Rate(String rateID, int customerID, int productID, String comment, float rate, String date) {
        this.rateID = rateID;
        this.customerID = customerID;
        this.productID = productID;
        this.comment = comment;
        this.rate = rate;
        this.date = date;
    }


    public String getRateID() {
        return rateID;
    }

    public void setRateID(String rateID) {
        this.rateID = rateID;
    }

    public int getCustomerID() {
        return customerID;
    }

    public void setCustomerID(int customerID) {
        this.customerID = customerID;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public float getRate() {
        return rate;
    }

    public void setRate(float rate) {
        this.rate = rate;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "Rate{" + "rateID=" + rateID + ", customerID=" + customerID + ", productID=" + productID + ", comment=" + comment + ", rate=" + rate + ", date=" + date + '}';
    }

 
    
}
