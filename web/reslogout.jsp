<%-- 
    Document   : reslogout
    Created on : 21 Jun, 2022, 1:36:41 AM
    Author     : Beast
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
	<body>
		<% session.invalidate(); %> <!-- HERE WE ARE INVALIDATE THE SESSION, SO THAT NO VALUES WILL BE PRESENT IN SESSION -->
                <jsp:forward page="Reslog.jsp"/>
	</body>
</html>
