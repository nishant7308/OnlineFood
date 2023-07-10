package OFD.Actions;

import OFD.Database.SQLconnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ActivateDA extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String uid = request.getParameter("id");

            Connection con = null;
            Statement st = null;
            Statement st1 = null;
            Connection conn = SQLconnection.getconnection();
            Statement sto = conn.createStatement();
            st = conn.createStatement();

            try {
                int i = sto.executeUpdate("update delagent set astatus='Active' where id='" + uid + "'");
                System.out.println("test print==" + uid);
                if (i != 0) {
                    response.sendRedirect("Dagentlist.jsp?Granted");
                } else {

                    System.out.println("failed");
                    response.sendRedirect("Dagentlist.jsp?Failed");
                }
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        } catch (SQLException ex) {
            Logger.getLogger(ActivateDA.class.getName()).log(Level.SEVERE, null, ex);
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
