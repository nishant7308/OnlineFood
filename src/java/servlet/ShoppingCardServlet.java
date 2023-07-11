
package servlet;

import OFD.Database.SQLconnection;
import controller.SQLControl;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Cart;

public class ShoppingCardServlet extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        SQLControl control = new SQLControl();
        HttpSession session1 = request.getSession();
        String cID = request.getParameter("slCustomer");
        String uid = request.getParameter("uid");
        String uname = request.getParameter("uname");
        String uphone = request.getParameter("uphone");
        String acity = request.getParameter("acity");
        String payMethod = request.getParameter("txtMethod");
        String resid = request.getParameter("resid");
        String dno = request.getParameter("dno");
        String street = request.getParameter("street");
        String landmark = request.getParameter("landmark");
        String address = dno+" "+street+","+"\n"+landmark;
        DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
        String date = dateFormat.format(new Date());

        PrintWriter out = response.getWriter();
        if (session1.getAttribute("cart") != null) {
            try {
                //insert order table
                control.insertOrder(date, payMethod, cID);
            } catch (SQLException ex) {
                System.out.println("SQL Error1");
            }
            try {
                //insert orderline table
                String orderID = control.getlastedOrID();
                ArrayList<Cart> arrC = (ArrayList<Cart>) session1.getAttribute("cart");
                for (int i = 0; i < arrC.size(); i++) {
                    String pID = arrC.get(i).getpID();
                    String pName = arrC.get(i).getpName();
                    int quantity = arrC.get(i).getQuantity();
                    int price = arrC.get(i).getpPrice();
                    int tot1=quantity*price;
                    int tot=tot1;
                    Connection con = SQLconnection.getconnection();
                    Statement st = con.createStatement();
                    Statement st1 = con.createStatement();
                    control.insertOrderLine(orderID, pID, quantity, price);
                    int k = st1.executeUpdate("INSERT into useroders(uid, uname, uphone, pid, pname, quantity, time, orderstatus,resid,total,oid,price,address,city,dastatus) values('" + uid + "','" + uname + "','" + uphone + "','" + pID + "','" + pName + "', '" + quantity + "','" + date + "','waiting','"+resid+"','"+tot+"','"+orderID+"','"+price+"','"+address+"','"+acity+"','Waiting')");
                }
            } catch (SQLException e) {
                System.out.println("SQL Error2");
            }
            //destroy session
            session1.removeAttribute("cart");
            session1.removeAttribute("rid");
            session1.removeAttribute("acity");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Thank you for using service');");
            out.println("location='Home.jsp';");
            out.println("</script>");
        } else {
            out.println("<script type=\"text/javascript\">");
            out.println("alert('You dont buy anything!! Plz buy something before checkout');");
            out.println("location='Home.jsp';");
            out.println("</script>");
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
