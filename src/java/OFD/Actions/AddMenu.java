
package OFD.Actions;

import OFD.Database.SQLconnection;
import OFD.Register.users;
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
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;


@MultipartConfig(maxFileSize = 16177215)
public class AddMenu extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            HttpSession session = request.getSession(true);
            String rid = session.getAttribute("rid").toString();
            String rname = session.getAttribute("rname").toString();
            String dishname = request.getParameter("dishname");
            String dishtype = request.getParameter("dishtype");
            String category = request.getParameter("Category");
            String region = request.getParameter("region");
            String price = request.getParameter("price");
            InputStream inputStream = null;
            Part filePart = request.getPart("dishphoto");
            if (filePart != null) {
                System.out.println(filePart.getName());
                System.out.println(filePart.getSize());
                System.out.println(filePart.getContentType());
                inputStream = filePart.getInputStream();
            }

            System.out.println("dishname------------>>            :" + dishname);
            DateFormat dateFormat = new SimpleDateFormat("YYYY/MM/dd HH:mm:ss");
            Date date = new Date();
            String time = dateFormat.format(date);
            System.out.println("Date and Time : " + time);
            System.out.println("dishtype : " + dishtype);
            Connection conn = SQLconnection.getconnection();
            Statement st = conn.createStatement();
            try {

               String sql = "insert into resmenu(resid, resname, dishname, type, category, regional, price, dishphoto, time) values (?, ?, ?, ?, ?, ?, ?, ?, ?)";
                PreparedStatement statement = conn.prepareStatement(sql);
                statement.setString(1, rid);
                statement.setString(2, rname);
                statement.setString(3, dishname);
                statement.setString(4, dishtype);
                statement.setString(5, category);
                statement.setString(6, region);
                statement.setString(7, price);

                if (inputStream != null) {
                    statement.setBlob(8, inputStream);
                }
                statement.setString(9, time);

                int row = statement.executeUpdate();
                if (row > 0) {

                    response.sendRedirect("Add_Menu.jsp?Added");
                } else {
                    response.sendRedirect("Add_Menu.jsp?Failed");
                }

            } catch (Exception ex) {
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
