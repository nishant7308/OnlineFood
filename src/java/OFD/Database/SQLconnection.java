
package OFD.Database;

import java.sql.Connection;
import java.sql.DriverManager;


public class SQLconnection {
    
static Connection con;


    public static Connection getconnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ofds", "root", "root");
        } catch (Exception e) {
        }
        return con;
    }
}
