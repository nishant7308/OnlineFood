
package OFD.Register;

import OFD.Database.SQLconnection;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


@MultipartConfig(maxFileSize = 16177215)
public class delreg extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String aname = request.getParameter("aname");
            String amail = request.getParameter("amail");
            String afname = request.getParameter("afname");
            String aphone = request.getParameter("aphone");
            String adob = request.getParameter("adob");
            String agender = request.getParameter("agender");
            String apass = request.getParameter("apass");
            String acity = request.getParameter("acity");
            String statuss = "No";
             InputStream inputStream = null;
            Part filePart = request.getPart("apic");
            if (filePart != null) {
                System.out.println(filePart.getName());
                System.out.println(filePart.getSize());
                System.out.println(filePart.getContentType());
                inputStream = filePart.getInputStream();
            }

            System.out.println("pass------------>>            :" + apass);
            DateFormat dateFormat = new SimpleDateFormat("YYYY/MM/dd HH:mm:ss");
            Date date = new Date();
            String time = dateFormat.format(date);
            System.out.println("Date and Time : " + time);
            System.out.println("name : " + aname);
            Connection conn = SQLconnection.getconnection();
            Statement st = conn.createStatement();
            try {
                ResultSet rs = st.executeQuery("select * from delagent where amail='" + amail + "'");
                int count = 0;
                while (rs.next()) {

                    count++;
                }
                if (count > 0) {
                    response.sendRedirect("res_reg.jsp?amail");
                } else {
                    String sql = "insert into delagent(aname, afname, adob, amail, aphone, acity, agender, apass, astatus, apic) values (?, ?, ?, ?, ?, ?, ?, ?, ? ,?)";
                PreparedStatement statement = conn.prepareStatement(sql);
                statement.setString(1, aname);
                statement.setString(2, afname);
                statement.setString(3, adob);
                statement.setString(4, amail);
                statement.setString(5, aphone);
                statement.setString(6, acity);
                statement.setString(7, agender);
                statement.setString(8, apass);
                statement.setString(9, statuss);
                if (inputStream != null) {
                    statement.setBlob(10, inputStream);
                }
                int row = statement.executeUpdate();
                if (row > 0) {
                        System.out.println("success");
                        response.sendRedirect("DeliveryAgents.jsp?success");
                    } else {
                        System.out.println("DeliveryAgents.jsp?failed");
                    }
                }
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        } catch (SQLException ex) {
            Logger.getLogger(delreg.class.getName()).log(Level.SEVERE, null, ex);
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
