/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package OFD.Register;

import OFD.Database.SQLconnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Beast
 */
public class users extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String name = request.getParameter("name");
    String mail = request.getParameter("email");
    String pass = request.getParameter("password");
    String phone = request.getParameter("phone");

    System.out.println("passEncryption------------>>            :" + pass);
    DateFormat dateFormat = new SimpleDateFormat("YYYY/MM/dd HH:mm:ss");
    Date date = new Date();
    String time = dateFormat.format(date);
    System.out.println("Date and Time : " + time);
    System.out.println("name : " + name);
    Connection conn = SQLconnection.getconnection();
    Statement st = conn.createStatement();
    try {
          ResultSet rs = st.executeQuery("select * from users where phone='" + phone + "'");
                int count = 0;
                while (rs.next()) {

                    count++;
                }
                if (count > 0) {
                    response.sendRedirect("index.jsp?phone");
                } else {
        int i = st.executeUpdate("insert into users(name, mailid, phone, pass, time)values('" + name + "','" + mail + "','" + phone + "','" + pass + "','" + time + "') ");
        if (i != 0) {
            System.out.println("success");
            response.sendRedirect("index.jsp?success");
        } else {
            System.out.println("index.jsp?failed");
        }
    }
    }
    catch (Exception ex) {
        ex.printStackTrace();
    }
        } catch (SQLException ex) {
            Logger.getLogger(users.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
