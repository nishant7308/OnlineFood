<%-- 
    Document   : user_update
    Created on : Nov 29, 2022, 12:39:13 PM
    Author     : Murthi
--%>

<%@page import="OFD.Database.SQLconnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String mail = request.getParameter("mail");
    String phone = request.getParameter("phone");
    String pass = request.getParameter("pass");
    String uid=session.getAttribute("uid").toString();
    Connection conn = SQLconnection.getconnection();
    Statement sto = conn.createStatement();

    try {
        int i = sto.executeUpdate("update users set mailid='"+mail+"',phone='"+phone+"',pass='"+pass+"' where id='" + uid + "' ");
        System.out.println("test print==" + uid);
        if (i != 0) {
            response.sendRedirect("myprofile.jsp?Updated");
        } else {

            System.out.println("failed");
            response.sendRedirect("myprofile.jsp?Failed");
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>
