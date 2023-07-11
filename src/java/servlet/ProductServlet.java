
package servlet;

import controller.SQLControl;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Cart;
import model.Product;


public class ProductServlet extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        String id = request.getParameter("id");
        String city = request.getParameter("city");
        String resid = request.getParameter("resid");
        String price = request.getParameter("price");
        String quantity = request.getParameter("quantity");
        int quant =Integer.parseInt(quantity);
        int rid =Integer.parseInt(resid);
        
        SQLControl control = new SQLControl();
        //get sessuin
        HttpSession session = request.getSession();
        session.setAttribute("rid", resid);
        session.setAttribute("acity", city);
        ArrayList<Cart> arrCart = new ArrayList<Cart>();
        ArrayList<Product> arrPro = new ArrayList<Product>();
        
        //get product detail
        arrPro = control.selectProduct(id);

        //store product infomantion to session
        if (session.getAttribute("cart") == null) {
            //if not exist session cart
            //add new product to cart
            arrCart.add(new Cart(arrPro.get(0).getpId(), arrPro.get(0).getpName(), arrPro.get(0).getpPrice(), quant));
        } else {
            arrCart = (ArrayList<Cart>) session.getAttribute("cart");
            //if ID is exist
            //increase quantity
            boolean checkID=false;
            for (int i = 0; i < arrCart.size(); i++) {
                if (arrCart.get(i).getpID().equalsIgnoreCase(id)) {
                    arrCart.get(i).setQuantity(arrCart.get(i).getQuantity() + quant);
                    checkID = true;
                    break;
                }
            }
            //if ID isn't exist
            if (checkID ==false) {
                 arrCart.add(new Cart(arrPro.get(0).getpId(), arrPro.get(0).getpName(), arrPro.get(0).getpPrice(), quant));
            }
        }
        //set session
        session.setAttribute("cart", arrCart);
        response.sendRedirect("usercart.jsp?resid="+resid+"&price="+price+"&city="+city);

    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ProductServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ProductServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
