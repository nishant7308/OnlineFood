
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
	<body>
		<% session.invalidate(); %> <!-- HERE WE ARE INVALIDATE THE SESSION, SO THAT NO VALUES WILL BE PRESENT IN SESSION -->
		<jsp:forward page="Main.jsp"/>
	</body>
</html>
