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
    private float price;
    private String productStatus;
    private int categoryID;

    public Product() {
    }

    public Product(int productID, String productName, String productTitle, String productImg, float price, String productStatus, int categoryID) {
        this.productID = productID;
        this.productName = productName;
        this.productTitle = productTitle;
        this.productImg = productImg;
        this.price = price;
        this.productStatus = productStatus;
        this.categoryID = categoryID;
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

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getProductStatus() {
        return productStatus;
    }

    public void setProductStatus(String productStatus) {
        this.productStatus = productStatus;
    }

    public int getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(int categoryID) {
        this.categoryID = categoryID;
    }
    
    
}
