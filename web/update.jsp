<%-- 
    Document   : update
    Created on : 27 Jun, 2022, 5:02:42 AM
    Author     : Beast
--%>

<%@page import="java.sql.Statement"%>
<%@page import="OFD.Database.SQLconnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    String id = request.getParameter("id");
    String price = request.getParameter("price");
    Connection conn = SQLconnection.getconnection();
    Statement sto = conn.createStatement();

    try {
        int i = sto.executeUpdate("update resmenu set price='"+price+"' where id='" + id + "'");
        System.out.println("test print==" + id);
        if (i != 0) {
            response.sendRedirect("MenuUpdate.jsp?Updated");
        } else {

            System.out.println("failed");
            response.sendRedirect("MenuUpdate.jsp?Failed");
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }


%>
