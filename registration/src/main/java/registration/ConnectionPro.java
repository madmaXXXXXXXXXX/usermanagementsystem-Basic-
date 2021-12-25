package registration;

import java.sql.Connection;
import java.sql.*;
public class ConnectionPro {
private static Connection con;
    
    public static Connection getConnection(){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ip","root","root");
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return con;
    }
}
