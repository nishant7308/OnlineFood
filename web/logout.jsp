<%-- 
    Document   : logout
    Created on : 20 jun, 2022, 2:14:18 PM
    Author     : Beast
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
	<body>
		<% session.invalidate(); %> <!-- HERE WE ARE INVALIDATE THE SESSION, SO THAT NO VALUES WILL BE PRESENT IN SESSION -->
		<jsp:forward page="Main.jsp"/>
	</body>
</html>
