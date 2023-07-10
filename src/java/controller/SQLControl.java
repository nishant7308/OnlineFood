/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.security.SecureRandom;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Cart;
import model.Customer;
import model.Product;

/**
 *
 * @author DC
 */
public class SQLControl {

    Connection con;
    Statement st;
    ResultSet rs;

    public SQLControl() {
    }

    public void loadDB() {
        try {
            con = DBContext.getConnection();
            st = con.createStatement();
        } catch (Exception ex) {
            System.out.println("Cant load DB");
        }

    }

    public ArrayList<Product> selectAllProduct(String id) throws SQLException {
        ArrayList<Product> pArrList = new ArrayList<>();
        loadDB();
        String sql = "select * from resmenu where resid = " + id + "";
        try {
            rs = st.executeQuery(sql);
            while (rs.next()) {
                String pId = rs.getString("id");
                String pName = rs.getString("dishname");
                int pPrice = Integer.parseInt(rs.getString("price"));
                pArrList.add(new Product(pId, pName, pPrice));
            }

        } catch (SQLException ex) {
            System.out.println("SQL Error");
        } finally {
            //disconnect db
            rs.close();
            st.close();
            con.close();
        }
        return pArrList;
    }

    public ArrayList<Product> selectProduct(String id) throws SQLException {
        ArrayList<Product> arrCart = new ArrayList<>();
        loadDB();
        String xSQL = "select  * from resmenu where id = " + id + " ";
        try {
            rs = st.executeQuery(xSQL);
            while (rs.next()) {
                String pId = rs.getString("id");
                String pName = rs.getString("dishname");
                int pPrice = Integer.parseInt(rs.getString("price"));
                arrCart.add(new Product(pId, pName, pPrice));
            }

        } catch (SQLException ex) {
            System.out.println("SQL Error");
        } finally {
            //disconnect db
            rs.close();
            st.close();
            con.close();
        }
        return arrCart;
    }

    public ArrayList<Customer> selectAllCustomer() throws SQLException {
        ArrayList<Customer> arrCus = new ArrayList<>();
        loadDB();

        try {
            String sql = "select * from users";
            rs = st.executeQuery(sql);
            while (rs.next()) {
                String cID = rs.getString("id");
                String cName = rs.getString("name");
                arrCus.add(new Customer(cID, cName));
            }

        } catch (SQLException ex) {
            System.out.println("SQL Error");
        } finally {
            //disconnect db
            rs.close();
            st.close();
            con.close();
        }
        return arrCus;
    }

    public void insertOrder(String date, String payment, String cusID) throws SQLException {
        loadDB();

        try {
            //Assume a valid connection object conn
            con.setAutoCommit(false);

            //transaction insert order to database
            String sql = "insert into orders(OrderDate,PaymentMethod,CustomerID) "
                    + "values ('" + date + "','" + payment + "','" + cusID + "')";
            st.executeUpdate(sql);
            // If there is no error.
            con.commit();

        } catch (SQLException ex) {
            System.out.println("SQL Error insertOrder");
            //if have any error
            con.rollback();
        } finally {
            st.close();
            con.close();
        }

    }

    public String getlastedOrID() throws SQLException {
        loadDB();
        Random RANDOM = new SecureRandom();
        int PASSWORD_LENGTH = 5;
        String letters = "123456789";
        String oid = "";
        for (int i = 0; i < PASSWORD_LENGTH; i++) {
            int index = (int) (RANDOM.nextDouble() * letters.length());
            oid += letters.substring(index, index + 1);
        }
        String OFOSID = "OFOS" + oid;
        int orID = +1;
        try {
            String sql = "select id from users order by id DESC ";
            rs = st.executeQuery(sql);
            while (rs.next()) {
                orID = rs.getInt("OrderID");
            }

        } catch (SQLException ex) {
            System.out.println("SQL Error getlastedOrID");
        } finally {
            rs.close();
            st.close();
            con.close();
        }

        return OFOSID;
    }

    public void insertOrderLine(String orderID, String pID, int quantity, int price) throws SQLException {
        loadDB();
        //Assume a valid connection object conn

        try {
            con.setAutoCommit(false);

            //transaction insert order line to database
            String sql = "insert into oderline (orderID, pID, quantity, price)values ('" + orderID + "','" + pID + "','" + quantity + "','" + price + "')";
            st.executeUpdate(sql);
            // If there is no error.
            con.commit();
        } catch (SQLException ex) {
            System.out.println("SQL Error insertOrderLine");
            //if have any error
            con.rollback();
        } finally {
            st.close();
            con.close();
        }
    }

}
