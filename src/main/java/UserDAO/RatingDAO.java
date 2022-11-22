package UserDAO;

import UserControl.Rating;
import context.DBContext;
import entity.Order;
import entity.Rate;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class RatingDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Rate> getAllRating() {
        List<Rate> list = new ArrayList<>();
        String query = "Select * from [RATE]";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Rate(rs.getString(1),
                        rs.getInt(2), rs.getInt(3), rs.getString(4), rs.getFloat(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Order> getOrderingByCusID(int customerID) {
        List<Order> list = new ArrayList<>();
        String query = "SELECT * FROM [ORDER] WHERE customerID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, customerID);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Order(rs.getInt(1),
                        rs.getInt(2), rs.getInt(3), rs.getString(4), rs.getString(5),
                        rs.getString(6), rs.getInt(7), rs.getInt(8)));
            }
        } catch (Exception e) {
        }

        return list;
    }

    public void rating(int customerID, String productID, String comment, String rate, String date) {
        try {
            String query = "insert into RATE \n"
                    + "VALUES (?, ?, ?, ?, ?)";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, customerID);
            ps.setString(2, productID);
            ps.setString(3, comment);
            ps.setString(4, rate);
            ps.setString(5, date);
            ps.executeUpdate();

        } catch (Exception e) {
        }
    }

    public void editRating(String comment, String rate, String date, String rateId) {
        try {
            String query = "  UPDATE [RATE]\n"
                    + "  SET comment = ?,\n"
                    + "	  rate = ?,\n"
                    + "	  [date] = ?\n"
                    + "  WHERE rateID = ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, comment);
            ps.setString(2, rate);
            ps.setString(3, date);
            ps.setString(4, rateId);
            ps.executeUpdate();

        } catch (Exception e) {
        }
    }

    public List<Rate> getRateByProductId(String pid) {
        List<Rate> list = new ArrayList<>();
        String query = "select * from [RATE] where productID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, pid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Rate(rs.getString(1),
                        rs.getInt(2), rs.getInt(3), rs.getString(4), rs.getFloat(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Rate getRateByCustomerId(String cid, String pid) {
        String query = "select * from [RATE] where customerID = ? and productID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);
            ps.setString(1, pid);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Rate(rs.getString(1),
                        rs.getInt(2), rs.getInt(3), rs.getString(4), rs.getFloat(5),
                        rs.getString(6));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Rate checkRated(int cid, String pid) {
        String query = "select * from [RATE] where customerID = ? and productID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, cid);
            ps.setString(2, pid);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Rate(rs.getString(1),
                        rs.getInt(2), rs.getInt(3), rs.getString(4), rs.getFloat(5),
                        rs.getString(6));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public int countTotalByProductID(String pid) {
        int count = 0;
        String query = "Select COUNT(customerID) AS countTotal FROM [RATE] where productID= ? GROUP BY productID";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, pid);
            rs = ps.executeQuery();
            while (rs.next()) {
                count = rs.getInt("countTotal");
            }
        } catch (Exception e) {
        }
        return count;
    }

    public int countCmtByProductID(String pid) {
        int count = 0;
        String query = "Select COUNT(comment) AS countCmt FROM [RATE] where productID= ? GROUP BY productID";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, pid);
            rs = ps.executeQuery();
            while (rs.next()) {
                count = rs.getInt("countCmt");
            }
        } catch (Exception e) {
        }
        return count;
    }

    public int countRateByProductID(String pid) {
        int count = 0;
        String query = "Select COUNT(rate) AS countRate FROM [RATE] where productID= ? GROUP BY productID";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, pid);
            rs = ps.executeQuery();
            while (rs.next()) {
                count = rs.getInt("countRate");
            }
        } catch (Exception e) {
        }
        return count;
    }

    public int sumRateByProductId(String pid) {
        int sum = 0;
        String query = "Select SUM(rate) AS SUMRATE FROM [RATE] where productID = ? ";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, pid);
            rs = ps.executeQuery();
            while (rs.next()) {
                sum = rs.getInt("SUMRATE");
            }
        } catch (Exception e) {
        }
        return sum;
    }
}
