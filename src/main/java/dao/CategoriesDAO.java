/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Category;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class CategoriesDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public void addCategory(String name, String image) {
        String query = "insert into CATEGORY\n"
                + "values (?, ?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, image);

            ps.executeUpdate();
        } catch (Exception e) {
        }

    }
    
    public void deleteCategory(String cid) {
        String query = "delete from CATEGORY\n"
                + "where categoryID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public Category getCategoryById(String id) {
        String sql = "select * from CATEGORY where categoryID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Category(rs.getInt(1),
                        rs.getString(2), rs.getString(3));
            }
        } catch (Exception e) {

        }
        return null;
    }
    
    public void editCategory(String name, String image, String cid) {
        String query = "update CATEGORY\n"
                + "set categoryName = ?,\n"
                + "	categoryImg =?\n"
                + "Where categoryID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, cid);

            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
}
