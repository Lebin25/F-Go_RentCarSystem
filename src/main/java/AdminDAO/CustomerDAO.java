/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package AdminDAO;

import context.DBContext;
import entity.Customer;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class CustomerDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Customer> getAllCustomer() {
        List<Customer> list = new ArrayList<>();
        String query = "Select * from CUSTOMER";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Customer(rs.getInt(1),
                        rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void addCustomer(String name, String phone, String email, String nationalID, String drivingLicense, String accountId, String isVerify) {
        String query = "insert into CUSTOMER\n"
                + "values (?, ?, ?, ?, ?, ?, ?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, phone);
            ps.setString(3, email);
            ps.setString(4, nationalID);
            ps.setString(5, drivingLicense);
            ps.setString(6, accountId);
            ps.setString(7, isVerify);

            ps.executeUpdate();
        } catch (Exception e) {
        }

    }
    
    public Customer getCustomerByName(String name) {
        String query = "Select * From CUSTOMER where customerName = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Customer(rs.getInt(1),
                        rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8));
            }
        } catch (Exception e) {
        }
        return null;
    }
    
}
