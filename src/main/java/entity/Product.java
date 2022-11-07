package entity;

/**
 *
 * @author Bin
 */
public class Product {

    private int productID;
    private String productName;
    private String productTitle;
    private String productImg;
    private int price;
    private int productStatus;
    private int categoryID;
    private String seat;
    private String gear;
    private String color;
    private String licensePlate;
    private String fuel;
    private String yearRelease;

    private float rating;
    private int cmt;

    public Product() {
    }

    public Product(int productID, String productName, String productTitle, String productImg, int price, int productStatus, int categoryID, String seat, String gear, String color, String licensePlate, String fuel, String yearRelease) {
        this.productID = productID;
        this.productName = productName;
        this.productTitle = productTitle;
        this.productImg = productImg;
        this.price = price;
        this.productStatus = productStatus;
        this.categoryID = categoryID;
        this.seat = seat;
        this.gear = gear;
        this.color = color;
        this.licensePlate = licensePlate;
        this.fuel = fuel;
        this.yearRelease = yearRelease;
    }

    public int getCmt() {
        return cmt;
    }

    public void setCmt(int cmt) {
        this.cmt = cmt;
    }

    public float getRating() {
        return rating;
    }

    public void setRating(float rating) {
        this.rating = rating;
    }

    public Product(int productID, String productName, String productTitle, String productImg, int price, int productStatus, int categoryID, String seat, String gear, String color, String licensePlate, String fuel, String yearRelease, float rating, int cmt) {
        this.productID = productID;
        this.productName = productName;
        this.productTitle = productTitle;
        this.productImg = productImg;
        this.price = price;
        this.productStatus = productStatus;
        this.categoryID = categoryID;
        this.seat = seat;
        this.gear = gear;
        this.color = color;
        this.licensePlate = licensePlate;
        this.fuel = fuel;
        this.yearRelease = yearRelease;
        this.rating = rating;
        this.cmt = cmt;

    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductTitle() {
        return productTitle;
    }

    public void setProductTitle(String productTitle) {
        this.productTitle = productTitle;
    }

    public String getProductImg() {
        return productImg;
    }

    public void setProductImg(String productImg) {
        this.productImg = productImg;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getProductStatus() {
        return productStatus;
    }

    public void setProductStatus(int productStatus) {
        this.productStatus = productStatus;
    }

    public int getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(int categoryID) {
        this.categoryID = categoryID;
    }

    public String getSeat() {
        return seat;
    }

    public void setSeat(String seat) {
        this.seat = seat;
    }

    public String getGear() {
        return gear;
    }

    public void setGear(String gear) {
        this.gear = gear;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getLicensePlate() {
        return licensePlate;
    }

    public void setLicensePlate(String licensePlate) {
        this.licensePlate = licensePlate;
    }

    public String getFuel() {
        return fuel;
    }

    public void setFuel(String fuel) {
        this.fuel = fuel;
    }

    public String getYearRelease() {
        return yearRelease;
    }

    public void setYearRelease(String yearRelease) {
        this.yearRelease = yearRelease;
    }

    @Override
    public String toString() {
        return "Product{" + "productID=" + productID + ", productName=" + productName + ", productTitle=" + productTitle + ", productImg=" + productImg + ", price=" + price + ", productStatus=" + productStatus + ", seat=" + seat + ", gear=" + gear + ", color=" + color + ", licensePlate=" + licensePlate + ", fuel=" + fuel + ", yearRelease=" + yearRelease + '}';
    }

}
