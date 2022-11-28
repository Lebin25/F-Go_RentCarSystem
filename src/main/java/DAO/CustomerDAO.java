/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

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
                        rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getString(9)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void addCustomer(String name, String phone, String email, String nationalID, String drivingLicense, String accountId, String isVerify, String faceImg) {
        String query = "insert into CUSTOMER\n"
                + "values (?, ?, ?, ?, ?, ?, ?, ?)";
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
            ps.setString(8, faceImg);

            ps.executeUpdate();
        } catch (Exception e) {
        }

    }

    public Customer getCustomerById(String id) {
        String query = "Select * From CUSTOMER where customerID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Customer(rs.getInt(1),
                        rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getString(9));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Customer getCustomerByID(String id) {
        String query = "Select * From CUSTOMER where customerID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Customer(rs.getInt(1),
                        rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getString(9));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Customer getCustomerByAccID(String id) {
        String query = "Select * From CUSTOMER where accountID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Customer(rs.getInt(1),
                        rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getString(9));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Customer getCustomerByPhone(String phone) {
        String query = "select * from CUSTOMER WHERE phone = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, phone);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Customer(rs.getInt(1),
                        rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getString(9));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void deleteCustomer(String cusid) {
        String query = "delete from CUSTOMER\n"
                + "where customerID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, cusid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void verifyCustomer(String cid) {
        String query = "UPDATE CUSTOMER\n"
                + "SET isVerify = 1\n"
                + "WHERE customerID = ? ";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void editCustomer(String name, String phone, String email, String nationalId, String drivinglicense, int isVerify, String faceImg, String cusid) {
        String query = "update CUSTOMER\n"
                + "set customerName = ?,\n"
                + "phone =?,\n"
                + "email =?,\n"
                + "nationalID =?,\n"
                + "drivingLicense = ?,\n"
                + "isVerify =?,\n"
                + "faceImg =?\n"
                + "Where customerID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, phone);
            ps.setString(3, email);
            ps.setString(4, nationalId);
            ps.setString(5, drivinglicense);
            ps.setInt(6, isVerify);
            ps.setString(7, faceImg);
            ps.setString(8, cusid);

            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public Customer getCustomerByAccIDInt(int id) {
        String query = "Select * From CUSTOMER where accountID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Customer(rs.getInt(1),
                        rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getString(9));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Customer getCustomerByIdInt(int id) {
        String query = "Select * From CUSTOMER where customerID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Customer(rs.getInt(1),
                        rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getString(9));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<Customer> getcustomerTime() {
        List<Customer> list = new ArrayList<>();
        String query = "select top 5 [CUSTOMER].accountID, [ORDER].customerID, [CUSTOMER].customerName,\n"
                + "count( [ORDER].customerID) as solansudung\n"
                + "FROM [ORDER]\n"
                + "INNER JOIN [CUSTOMER] on [ORDER].customerID=[CUSTOMER].customerID\n"
                + "Group by [CUSTOMER].accountID, [ORDER].customerID, [CUSTOMER].customerName\n"
                + "ORDER by solansudung desc";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Customer(rs.getInt(1),
                        rs.getInt(2), rs.getString(3), rs.getInt(4)));
            }
        } catch (Exception e) {
        }
        return list;
    }
}
