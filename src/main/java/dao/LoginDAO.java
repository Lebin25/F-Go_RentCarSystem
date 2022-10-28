package dao;

import context.DBContext;
import entity.Account;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Bin
 */
public class LoginDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public Account checkLogin(String acc, String pass){
        try {
            String query = "select * from ACCOUNT where account = ? and password = ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, acc);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while(rs.next()){
                Account a = new Account(rs.getInt(1) ,rs.getString(2), rs.getString(3), rs.getString(4));
                return a;
            }
        } catch (Exception e) {
        }
        
        return null;
    }
        
}


