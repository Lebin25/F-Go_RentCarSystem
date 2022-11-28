/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author ADMIN
 */
public class Customer {
    private int customerId;
    private String customerName;
    private String phone;
    private String email;
    private String nationalId;
    private String drivingLicense;
    private int accountId;
    private int isVerify;
    private String faceImg;

    public Customer() {
    }

    public Customer(int customerId, String customerName, String phone, String email, String nationalId, String drivingLicense, int accountId, int isVerify, String faceImg) {
        this.customerId = customerId;
        this.customerName = customerName;
        this.phone = phone;
        this.email = email;
        this.nationalId = nationalId;
        this.drivingLicense = drivingLicense;
        this.accountId = accountId;
        this.isVerify = isVerify;
        this.faceImg = faceImg;
    }
    
    private int customerTime;

    public Customer(int accountId, int customerId, String customerName, int customerTime) {
        this.customerId = customerId;
        this.customerName = customerName;
        this.accountId = accountId;
        this.customerTime = customerTime;
    }

    public int getCustomerTime() {
        return customerTime;
    }

    public void setCustomerTime(int customerTime) {
        this.customerTime = customerTime;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public int getAccountId() {
        return accountId;
    }

    public void setAccountId(int accountId) {
        this.accountId = accountId;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getNationalId() {
        return nationalId;
    }

    public void setNationalId(String nationalId) {
        this.nationalId = nationalId;
    }

    public String getDrivingLicense() {
        return drivingLicense;
    }

    public void setDrivingLicense(String drivingLicense) {
        this.drivingLicense = drivingLicense;
    }

    public int getIsVerify() {
        return isVerify;
    }

    public void setIsVerify(int isVerify) {
        this.isVerify = isVerify;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFaceImg() {
        return faceImg;
    }

    public void setFaceImg(String faceImg) {
        this.faceImg = faceImg;
    }

    @Override
    public String toString() {
        return "Customer{" + "customerId=" + customerId + ", customerName=" + customerName + ", phone=" + phone + ", email=" + email + ", nationalId=" + nationalId + ", drivingLicense=" + drivingLicense + ", accountId=" + accountId + ", isVerify=" + isVerify + ", faceImg=" + faceImg + '}';
    }
    
    
    
}
