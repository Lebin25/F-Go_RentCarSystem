/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package AdminDAO;

import context.DBContext;
import entity.Account;
import entity.Role;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class AccountDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Account> getAllAccount() {
        List<Account> list = new ArrayList<>();
        String query = "Select * from ACCOUNT";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Account(rs.getInt(1),
                        rs.getString(2), rs.getString(3), rs.getString(4)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public List<Role> getAllRole() {
        List<Role> list = new ArrayList<>();
        String query = "Select * from ROLE";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Role(rs.getInt(1),
                        rs.getString(2)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public void addAccount(String username, String pass, String role) {
        String query = "insert into ACCOUNT\n"
                + "values (?, ?, ?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, pass);
            ps.setString(3, role);

            ps.executeUpdate();
        } catch (Exception e) {
        }

    }
    
    public void deleteAccount(String aid) {
        String query = "delete from ACCOUNT\n"
                + "where accountID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, aid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public void changepassword( Account a ) {
        String query = "update ACCOUNT\n"
                + "set password = ?\n"
                + "Where account = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, a.getPassword());
            ps.setString(2, a.getAccount());

            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public Account check(String accountname, String password){
        String sql ="select * from ACCOUNT where account=? and password = ?";
        try{
           conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql); 
            ps.setString(1, accountname);
            ps.setString(2, password);
            rs = ps.executeQuery();
            if (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2), rs.getString(3), rs.getString(4));
            }
        } catch (Exception e) {
            
        }
        return null;
    }
    
    public Account checkGoogleAccount(String email){
        String sql = "select * from ACCOUNT where account=?";
        try{
           conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql); 
            ps.setString(1, email);
            rs = ps.executeQuery();
            if (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2), rs.getString(3), rs.getString(4));
            }
        } catch (Exception e) {
            
        }
        return null;
    }
    
}
