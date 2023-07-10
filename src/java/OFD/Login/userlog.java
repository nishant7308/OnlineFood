
package OFD.Login;

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
import javax.servlet.http.HttpSession;


public class userlog extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            HttpSession session = request.getSession();
            String phone = request.getParameter("phone");
            String pass = request.getParameter("pass");
            String status = null;
            System.out.println("Check User ID And Password : " + phone + pass);
            Connection con = SQLconnection.getconnection();
            Statement st = con.createStatement();
            Statement st1 = con.createStatement();
            Statement sto = con.createStatement();
            DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
            Date date = new Date();
            String time = dateFormat.format(date);
            try {
                ResultSet rs = st.executeQuery("SELECT * FROM users where phone='" + phone + "' AND pass='" + pass + "'");
                if (rs.next()) {
                    System.out.println("Check 2 Pass");
                    session.setAttribute("uid", rs.getString("id"));
                    session.setAttribute("uname", rs.getString("name"));
                    session.setAttribute("uphone", rs.getString("phone"));

                    int i = sto.executeUpdate("update users set lastlog='" + time + "' where phone = '" + phone + "' ");

                    response.sendRedirect("Home.jsp?Success");
                } else {
                    response.sendRedirect("index.jsp?not");

                }

            } catch (Exception ex) {
                ex.printStackTrace();
            }
        } catch (SQLException ex) {
            Logger.getLogger(userlog.class.getName()).log(Level.SEVERE, null, ex);
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
