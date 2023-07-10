<%-- 
    Document   : clearcart
    Created on : Dec 1, 2022, 4:03:00 PM
    Author     : Murthi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <body>
        <% session.removeAttribute("cart");
            session.removeAttribute("rid");
            session.removeAttribute("acity");
        %> <!-- HERE WE ARE INVALIDATE THE SESSION, SO THAT NO VALUES WILL BE PRESENT IN SESSION -->
        <jsp:forward page="usercart.jsp"/>
    </body>
</html>

