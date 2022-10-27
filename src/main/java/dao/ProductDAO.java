package dao;

import context.DBContext;
import entity.Category;
import entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Bin
 */
public class ProductDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public List<Product> getAllProduct(){
        List<Product> list = new ArrayList<>();
        String query = "Select * from PRODUCT";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), 
                        rs.getString(2), rs.getString(3), rs.getString(4), rs.getFloat(5), 
                        rs.getInt(6), rs.getInt(7), rs.getString(8), rs.getString(9),
                        rs.getString(10), rs.getString(11), rs.getString(12), rs.getString(13)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public List<Category> getAllCategory(){
        List<Category> list = new ArrayList<>();
        String query = "Select * from CATEGORY";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt(1), 
                        rs.getString(2), rs.getString(3)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public List<Product> getAllProductByCID(String cid) {
        List<Product> list = new ArrayList<>();
        String sql = "Select * from PRODUCT\n"
                + "where categoryID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), 
                        rs.getString(2), rs.getString(3), rs.getString(4), rs.getFloat(5), 
                        rs.getInt(6), rs.getInt(7), rs.getString(8), rs.getString(9),
                        rs.getString(10), rs.getString(11), rs.getString(12), rs.getString(13)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public List<Product> searchProductByName(String txtSearch) {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT * from PRODUCT\n"
                + "where productName like ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, "%" + txtSearch + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), 
                        rs.getString(2), rs.getString(3), rs.getString(4), rs.getFloat(5), 
                        rs.getInt(6), rs.getInt(7), rs.getString(8), rs.getString(9),
                        rs.getString(10), rs.getString(11), rs.getString(12), rs.getString(13)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public List<Product> getTop6() {
        List<Product> list = new ArrayList<>();
        String sql = "Select top 6 * from PRODUCT";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), 
                        rs.getString(2), rs.getString(3), rs.getString(4), rs.getFloat(5), 
                        rs.getInt(6), rs.getInt(7), rs.getString(8), rs.getString(9),
                        rs.getString(10), rs.getString(11), rs.getString(12), rs.getString(13)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public List<Product> getNext6Products(int ammount) {
        List<Product> list = new ArrayList<>();
        String sql = "select * from PRODUCT\n"
                + "ORDER by productID\n"
                + "OFFSET ? ROWS\n"
                + "FETCH NEXT 6 ROWS ONLY";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, ammount);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), 
                        rs.getString(2), rs.getString(3), rs.getString(4), rs.getFloat(5), 
                        rs.getInt(6), rs.getInt(7), rs.getString(8), rs.getString(9),
                        rs.getString(10), rs.getString(11), rs.getString(12), rs.getString(13)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public void addProduct(String name, String des, String image, String price, String status, 
            String cateId, String seat, String gear, String color, String licensePlate, String fuel, String yearRelease) {
        String query = "insert into PRODUCT\n"
                + "values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, des);
            ps.setString(3, image);
            ps.setString(4, price);
            ps.setString(5, status);
            ps.setString(6, cateId);
            ps.setString(7, seat);
            ps.setString(8, gear);
            ps.setString(9, color);
            ps.setString(10, licensePlate);
            ps.setString(11, fuel);
            ps.setString(12, yearRelease);

            ps.executeUpdate();
        } catch (Exception e) {
        }

    }
    
}
