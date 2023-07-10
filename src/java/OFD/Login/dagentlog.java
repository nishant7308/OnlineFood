
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


public class dagentlog extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
              HttpSession session = request.getSession();
            String user = request.getParameter("amail");
            String pass = request.getParameter("password");
            String status = null;
            System.out.println("Check User ID And Password : " + user + pass);
            Connection con = SQLconnection.getconnection();
            Statement st = con.createStatement();
            Statement st1 = con.createStatement();
            Statement sto = con.createStatement();
            DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
            Date date = new Date();
            String time = dateFormat.format(date);
            try {
                ResultSet rs1 = st1.executeQuery("SELECT * FROM delagent where amail='" + user + "' AND apass='" + pass + "'");
                System.out.println("Check 1 Pass");
                if (rs1.next()) {
                    ResultSet rs = st.executeQuery("SELECT * FROM delagent where amail='" + user + "' AND apass='" + pass + "' AND astatus='Active' ");
                    if (rs.next()) {
                                    System.out.println("Check 2 Pass");
                        session.setAttribute("did", rs.getString("id"));
                        session.setAttribute("dname", rs.getString("aname"));
                        session.setAttribute("dcity", rs.getString("acity"));

                        response.sendRedirect("DAHome.jsp?Success");
                    } else {
                        response.sendRedirect("DeliveryAgents.jsp?not");

                    }
                } else {
                    response.sendRedirect("DeliveryAgents.jsp?Authentication_Failed");
                }

            } catch (Exception ex) {
                ex.printStackTrace();
            }
        } catch (SQLException ex) {
            Logger.getLogger(reslog.class.getName()).log(Level.SEVERE, null, ex);
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
