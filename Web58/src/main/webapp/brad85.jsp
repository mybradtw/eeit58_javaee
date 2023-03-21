<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if (session.getAttribute("member") == null){
		response.sendRedirect("brad83.html");
	}
%>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h1>Brad Company</h1>
		<hr />
		Welcome, ${member.realname }
		<hr />
		<a href="logout.jsp">Logout</a>
	</body>
</html>