package AuthenicationDAO;

import context.DBContext;
import entity.Account;
import entity.Customer;
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

    public Account checkLogin(String acc, String pass) {
        try {
            String query = "select * from ACCOUNT where account = ? and password = ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, acc);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                Account a = new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));
                return a;
            }
        } catch (Exception e) {
        }

        return null;
    }

    public Account getAccountByEmail(String account) {
        String query = "select * from ACCOUNT WHERE account =?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, account);
            rs = ps.executeQuery();
            while (rs.next()) {
                Account a = new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));
                return a;
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    public Account getAccountByAcc(String account) {
        String query = "select * from ACCOUNT WHERE account =?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, account);
            rs = ps.executeQuery();
            while (rs.next()) {
                Account a = new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));
                return a;
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Account addEmailToAccount(String account, String role) {
        String query = "INSERT INTO ACCOUNT (account, roleID)\n"
                + "VALUES (?, ?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, account);
            ps.setString(2, role);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return null;
    }

    public Customer addEmailToCustomer(String email, int accountID) {
        String query = "insert into CUSTOMER(email, accountID, isVerify)\n"
                + "values (?, ?, 0)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            ps.setInt(2, accountID);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return null;
    }

}
