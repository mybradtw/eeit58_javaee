<%@ page language="java" contentType="text/html; charset=UTF8"
    pageEncoding="UTF-8"%>
<%
	int b = (Integer)application.getAttribute("a");
	b++;
	application.setAttribute("a", b);
%>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	I am brad56<hr />
	a = ${a }	
	</body>
</html>