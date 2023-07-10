
package OFD.Actions;

import OFD.Database.SQLconnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
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


public class DAorderAccept extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
           HttpSession session1 = request.getSession();
            String daid=session1.getAttribute("did").toString();
            String oid = request.getParameter("oid");
DateFormat dateFormat = new SimpleDateFormat("YYYY/MM/dd HH:mm:ss");
            Date date = new Date();
            String time = dateFormat.format(date);
            System.out.println("Date and Time : " + time);
            
            Connection con = null;
            Statement st = null;
            Statement st1 = null;
            Connection conn = SQLconnection.getconnection();
            Statement sto = conn.createStatement();
            st = conn.createStatement();

            try {
                int i = sto.executeUpdate("update useroders set dastatus='Delivered',daid='"+daid+"',dtime='"+time+"' where oid='"+oid+"'");
                System.out.println("test print==" + oid);
                if (i != 0) {
                        response.sendRedirect("DAhistory.jsp?Delivered");
                    } else {

                        System.out.println("failed");
                        response.sendRedirect("DAhistory.jsp?Failed");
                    }
                }
               catch (Exception ex) {
                ex.printStackTrace();
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAorderAccept.class.getName()).log(Level.SEVERE, null, ex);
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
