/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author ADMIN
 */
public class Order {
    private int orderId;
    private int customerID;
    private int productId;
    private String timeBegin;
    private String timeEnd;
    private String address;
    private int totalMoney;
    private int status;

    public Order() {
    }

    public Order(int orderId, int customerID, int productId, String timeBegin, String timeEnd, String address, int totalMoney, int status) {
        this.orderId = orderId;
        this.customerID = customerID;
        this.productId = productId;
        this.timeBegin = timeBegin;
        this.timeEnd = timeEnd;
        this.address = address;
        this.totalMoney = totalMoney;
        this.status = status;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getCustomerID() {
        return customerID;
    }

    public void setCustomerID(int customerID) {
        this.customerID = customerID;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getTimeBegin() {
        return timeBegin;
    }

    public void setTimeBegin(String timeBegin) {
        this.timeBegin = timeBegin;
    }

    public String getTimeEnd() {
        return timeEnd;
    }

    public void setTimeEnd(String timeEnd) {
        this.timeEnd = timeEnd;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getTotalMoney() {
        return totalMoney;
    }

    public void setTotalMoney(int totalMoney) {
        this.totalMoney = totalMoney;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Order{" + "orderId=" + orderId + ", customerID=" + customerID + ", productId=" + productId + ", timeBegin=" + timeBegin + ", timeEnd=" + timeEnd + ", address=" + address + ", totalMoney=" + totalMoney + ", status=" + status + '}';
    }

    

   
    
    
    
}
