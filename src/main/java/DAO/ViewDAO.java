/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/**
 *
 * @author Admin
 */
public class ViewDAO {

    public int getViews() throws SQLException, Exception {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        DBContext db = new DBContext();
        int count = 0;
        try {
            String query = "select * from [view]";
            conn = db.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            if (rs.next()) {
                count = rs.getInt("viewed");
            }
            return count;
        } catch (Exception e) {
            throw e;
        }
    }

    public void updateView() throws SQLException, Exception {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        DBContext db = new DBContext();
        int count = 0;
        try {
            String query = "UPDATE [view]\n"
                    + "SET viewed = viewed + 1";
            conn = db.getConnection();
            ps = conn.prepareStatement(query);
            ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        }
    }

    public float getTotal() throws SQLException, Exception {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        DBContext db = new DBContext();
        int total = 0;
        try {
            String query = "select sum(totalMoney) as tongdoanhthu from [ORDER]";
            conn = db.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            if (rs.next()) {
                total = rs.getInt("tongdoanhthu");
            }
            return total;
        } catch (Exception e) {
            throw e;
        }
    }

    public int getNumberGuests() throws SQLException, Exception {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        DBContext db = new DBContext();
        int num = 0;
        try {
            String query = "select Count(orderID) as Sokhachdathue from [ORDER]";
            conn = db.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            if (rs.next()) {
                num = rs.getInt("Sokhachdathue");
            }
            return num;
        } catch (Exception e) {
            throw e;
        }
    }

    public int getRate() throws SQLException, Exception {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        DBContext db = new DBContext();
        int rate = 0;
        try {
            String query = "select count(rateID) as soluotdanhgia from RATE";
            conn = db.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            if (rs.next()) {
                rate = rs.getInt("soluotdanhgia");
            }
            return rate;
        } catch (Exception e) {
            throw e;
        }
    }

    public Map<Integer, Float> getMonthly() throws SQLException, Exception {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        DBContext db = new DBContext();
        Map<Integer, Float> map = new HashMap<Integer, Float>();
        for (int i = 1; i < 13; i++) {
            map.put(i, new Float(0));
        }
        try {
            String query = "select Month(timeEnd) as Thang,SUM(totalMoney) as Doanhthu from [ORDER] group by MONTH(timeEnd)";
            conn = db.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                int key = rs.getInt("Thang");
                map.put(key, rs.getFloat("Doanhthu"));
            }
            return map;
        } catch (Exception e) {
            throw e;
        }
    }
}
