/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package AdminDAO;

import context.DBContext;
import entity.Admin;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class AdminDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Admin> getAllAdmin() {
        List<Admin> list = new ArrayList<>();
        String query = "Select * from ADMIN";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Admin(rs.getInt(1),
                        rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public void addAdmin(String name, String phone, String image, String accountId) {
        String query = "insert into ADMIN\n"
                + "values (?, ?, ?, ?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, phone);
            ps.setString(3, image);
            ps.setString(4, accountId);
            ps.executeUpdate();
        } catch (Exception e) {
        }

    }
    
    public void deleteAdmin(String aid) {
        String query = "delete from ADMIN\n"
                + "where adminID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, aid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public Admin getAdminById(String id) {
        String sql = "select * from ADMIN where adminID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Admin(rs.getInt(1),
                        rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5));
            }
        } catch (Exception e) {

        }
        return null;
    }
    
    public void editAdmin(String name, String phone, String image, String aid) {
        String query = "update ADMIN\n"
                + "set adminName = ?,\n"
                + "	phone =?,\n"
                + "	nationalID =?\n"
                + "Where adminID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, phone);
            ps.setString(3, image);
            ps.setString(4, aid);

            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
}
