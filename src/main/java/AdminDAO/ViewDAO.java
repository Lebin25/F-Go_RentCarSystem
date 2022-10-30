/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package AdminDAO;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Admin
 */
public class ViewDAO {
    public int getViews() throws SQLException,Exception {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs=null;
    DBContext db = new DBContext();
    int count=0;
    try {
        String query="select * from [view]";
        conn=db.getConnection();
        ps= conn.prepareStatement(query);
        rs=ps.executeQuery();
        if (rs.next()){
            count = rs.getInt("viewed");
        }
        return count;
    } catch (Exception e){
        throw e;
    } 
}
    public void updateView() throws SQLException,Exception {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs=null;
    DBContext db = new DBContext();
    int count=0;
    try {
        String query="UPDATE [view]\n"
                + "SET viewed = viewed + 1";
        conn=db.getConnection();
        ps= conn.prepareStatement(query);
        ps.executeUpdate();
    } catch (Exception e){
        throw e;
    } 
}
}
