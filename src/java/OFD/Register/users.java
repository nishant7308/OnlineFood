
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


public class users extends HttpServlet {

 
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
