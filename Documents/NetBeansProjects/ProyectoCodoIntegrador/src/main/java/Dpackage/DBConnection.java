package Dpackage;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    
    /*private static final String URL = "jdbc:mysql://localhost:3306/trabajofinal";
    private static final String USER = "root";
    private static final String PASSWORD = "Nicolas1_";
    
    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }*/
    
    
    public static Connection getConnection(){
        Connection con = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/trabajofinal?serverTimezone=UTC","root","Nicolas1_");         
            
        }catch (Exception e){
            System.out.println(e);
        }
        return con;  
    }

}
