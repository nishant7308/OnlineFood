/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package OFD.Actions;

import OFD.Database.SQLconnection;
import OFD.Register.users;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
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
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author Murthi
 */
public class feedback extends HttpServlet {

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
            HttpSession session = request.getSession(true);
            String uid = session.getAttribute("uid").toString();
            String uname = session.getAttribute("uname").toString();
            String oid = request.getParameter("oid");
            String resid = request.getParameter("resid");
            String rating = request.getParameter("notation_note");
            String feedback = request.getParameter("feedback");

            System.out.println("dishname------------>>            :" + oid);
            DateFormat dateFormat = new SimpleDateFormat("YYYY/MM/dd HH:mm:ss");
            Date date = new Date();
            String time = dateFormat.format(date);
            System.out.println("Date and Time : " + time);
            System.out.println("dishtype : " + feedback);
            Connection conn = SQLconnection.getconnection();
            Statement st = conn.createStatement();
            try {

               String sql = "insert into feedback(uid, uname, oid, rating, feed, time,resid) values (?, ?, ?, ?, ?, ?, ?)";
                PreparedStatement statement = conn.prepareStatement(sql);
                statement.setString(1, uid);
                statement.setString(2, uname);
                statement.setString(3, oid);
                statement.setString(4, rating);
                statement.setString(5, feedback);
                statement.setString(6, time);
                statement.setString(7, resid);

                int row = statement.executeUpdate();
                if (row > 0) {

                    response.sendRedirect("Home.jsp?FeedAdded");
                } else {
                    response.sendRedirect("Home.jsp?Failed");
                }

            } catch (Exception ex) {
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
