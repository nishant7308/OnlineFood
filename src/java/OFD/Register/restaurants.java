
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
public class restaurants extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String resname = request.getParameter("resname");
            String mail = request.getParameter("mail");
            String address = request.getParameter("address");
            String phone = request.getParameter("phone");
            String gst = request.getParameter("gst");
            String username = request.getParameter("username");
            String pass = request.getParameter("pass");
            String city = request.getParameter("city");
            String statuss = "No";
             InputStream inputStream = null;
            Part filePart = request.getPart("resphoto");
            if (filePart != null) {
                System.out.println(filePart.getName());
                System.out.println(filePart.getSize());
                System.out.println(filePart.getContentType());
                inputStream = filePart.getInputStream();
            }

            System.out.println("pass------------>>            :" + pass);
            DateFormat dateFormat = new SimpleDateFormat("YYYY/MM/dd HH:mm:ss");
            Date date = new Date();
            String time = dateFormat.format(date);
            System.out.println("Date and Time : " + time);
            System.out.println("name : " + username);
            Connection conn = SQLconnection.getconnection();
            Statement st = conn.createStatement();
            try {
                ResultSet rs = st.executeQuery("select * from restaurants where username='" + username + "'");
                int count = 0;
                while (rs.next()) {

                    count++;
                }
                if (count > 0) {
                    response.sendRedirect("res_reg.jsp?username");
                } else {
                    String sql = "insert into restaurants(resname, mail, address, phone, gst, statuss, time, username, pass,city,respic) values (?, ?, ?, ?, ?, ?, ?, ?, ? ,?, ?)";
                PreparedStatement statement = conn.prepareStatement(sql);
                statement.setString(1, resname);
                statement.setString(2, mail);
                statement.setString(3, address);
                statement.setString(4, phone);
                statement.setString(5, gst);
                statement.setString(6, statuss);
                statement.setString(7, time);
                statement.setString(8, username);
                statement.setString(9, pass);
                statement.setString(10, city);
                if (inputStream != null) {
                    statement.setBlob(11, inputStream);
                }

                int row = statement.executeUpdate();
                if (row > 0) {
                        System.out.println("success");
                        response.sendRedirect("Reslog.jsp?success");
                    } else {
                        System.out.println("Reslog.jsp?failed");
                    }
                }
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        } catch (SQLException ex) {
            Logger.getLogger(restaurants.class.getName()).log(Level.SEVERE, null, ex);
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
    }// </editor-fold>

}
