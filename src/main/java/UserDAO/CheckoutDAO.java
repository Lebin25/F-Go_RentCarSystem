package UserDAO;

import context.DBContext;
import entity.Order;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Bin
 */
public class CheckoutDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public void addOrder(int customerId, String productID, String dateBegin, String dateEnd, String address, int totalMoney) {
        String query = "insert into [ORDER]\n"
                + "VALUES (?, ?, ?, ?, ?, ?, 1)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, customerId);
            ps.setString(2, productID);
            ps.setString(3, dateBegin);
            ps.setString(4, dateEnd);
            ps.setString(5, address);
            ps.setFloat(6, totalMoney);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public Order getOrder(){
        String query = "select top 1 * from [ORDER] order by orderID desc";
        
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()){
                return new Order(rs.getInt(1),
                        rs.getInt(2), rs.getInt(3), rs.getString(4), rs.getString(5),
                        rs.getString(6), rs.getInt(7), rs.getInt(8));
            }
        } catch (Exception e) {
        }
        return null;
    }
}
