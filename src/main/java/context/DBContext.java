package context;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBContext {
    public Connection getConnection()throws Exception {
        String url = "jdbc:sqlserver://"+serverName+":"+portNumber + "\\" + instance +";databaseName="+dbName;
        if(instance == null || instance.trim().isEmpty())
            url = "jdbc:sqlserver://"+serverName+":"+portNumber +";databaseName="+dbName;
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        return DriverManager.getConnection(url, userID, password);
    }   

    private final String serverName = "LAPTOP-EB1S6LNB";
    private final String dbName = "F-GO_Main";
    private final String portNumber = "1433";
    private final String instance="";
    private final String userID = "sa";
    private final String password = "12345";
    
    public static void main(String[] args) {
        try {
            System.out.println(new DBContext().getConnection());
            
        } catch (Exception e) {
        }
     
    }
}
