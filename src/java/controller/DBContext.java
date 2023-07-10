package controller;

import java.sql.Connection;
import java.sql.DriverManager;


public class DBContext {
    

    static Connection con;

    

    public static Connection getConnection()  
    {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ofds", "root", "root");
        } catch (Exception e) {
        }
        return con;
    }
}
