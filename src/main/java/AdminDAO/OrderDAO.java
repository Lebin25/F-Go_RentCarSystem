/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package AdminDAO;

import context.DBContext;
import entity.Order;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class OrderDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Order> getAllOrder() {
        List<Order> list = new ArrayList<>();
        String query = "Select * from [ORDER]";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Order(rs.getInt(1),
                        rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5),
                        rs.getString(6), rs.getString(7), rs.getInt(8)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void addOrder(int customerId, int productID, String dateBegin, String dateEnd, String address, Float totalMoney, String status) {
        String query = "insert into [ORDER]\n"
                + "VALUES (?, ?, ?, ?, ?, ?, ?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, customerId);
            ps.setInt(2, productID);
            ps.setString(3, dateBegin);
            ps.setString(4, dateEnd);
            ps.setString(5, address);
            ps.setFloat(6, totalMoney);
            ps.setString(7, status);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
}
