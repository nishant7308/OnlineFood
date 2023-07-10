<%-- 
    Document   : respic
    Created on : 23 Jun, 2022, 4:11:10 AM
    Author     : Beast
--%>


<%@page import="OFD.Database.SQLconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>

<%
    Blob image = null;
    Connection con = null;
    byte[] imgData = null;
    Statement stmt = null;
    ResultSet rs = null;
    String id = request.getParameter("uid");
    try {
        con= SQLconnection.getconnection();
        stmt = con.createStatement();
        rs = stmt.executeQuery("select respic from restaurants where id = '" + id + "'");
        if (rs.next()) {
            image = rs.getBlob(1);
            imgData = image.getBytes(1, (int) image.length());
        } else {
            out.println("Display Blob Example");
            out.println("image not found for given image");
            return;
        }
        response.setContentType("image/gif");
        OutputStream o = response.getOutputStream();
        o.write(imgData);
        o.flush();
        o.close();
    } catch (Exception e) {
        out.println("Unable To Display image");
        out.println("Image Display Error=" + e.getMessage());
        return;
    } finally {
        try {
            rs.close();
            stmt.close();
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>

