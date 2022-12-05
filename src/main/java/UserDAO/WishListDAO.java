/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package UserDAO;

import context.DBContext;
import entity.WishList;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author This PC
 */
public class WishListDAO {
    
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public void addWishList(int customerID, String productID) {
        String query = "insert into WISHLIST\n"
                + "values (?, ?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, customerID);
            ps.setString(2, productID);

            ps.executeUpdate();
        } catch (Exception e) {
        }

    }
    
    public List<WishList> getAllWishlistByCusId(int cid) {
        List<WishList> list = new ArrayList<>();
        String query = "Select * from WISHLIST where customerID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, cid);

            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new WishList(rs.getInt(1),
                        rs.getInt(2), rs.getInt(3)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public void deleteWishList(String wlid){
        String query = "DELETE FROM WISHLIST where wishlistID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, wlid);

            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public WishList check(String pid, int cid) {
        String sql = "select * from [WISHLIST] where productID = ? and customerID=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, pid);
            ps.setInt(2, cid);
            rs = ps.executeQuery();
            if (rs.next()) {
                return new WishList(rs.getInt(1),
                        rs.getInt(2), rs.getInt(3));
            }
        } catch (Exception e) {

        }
        return null;
    }
}
