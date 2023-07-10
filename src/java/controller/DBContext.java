package controller;

import java.sql.Connection;
import java.sql.DriverManager;


public class DBContext {
    
    /*USE BELOW METHOD FOR YOUR DATABASE CONNECTION FOR BOTH SINGLE AND MULTILPE SQL SERVER INSTANCE(s)*/
    /*DO NOT EDIT THE BELOW METHOD, YOU MUST USE ONLY THIS ONE FOR YOUR DATABASE CONNECTION*/
    static Connection con;

    
    /**
     *
     * @return
     */
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