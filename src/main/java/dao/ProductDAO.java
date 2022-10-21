package dao;

import context.DBContext;
import entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Bin
 */
public class ProductDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public List<Product> getAllProduct(){
        List<Product> list = new ArrayList<>();
        String sql = "Select * from PRODUCT";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), 
                        rs.getString(2), rs.getString(3), rs.getString(4), rs.getFloat(5), 
                        rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9),
                        rs.getString(10), rs.getString(11), rs.getString(12)));
            }
        } catch (Exception e) {
        }
        return list;
    }
}
