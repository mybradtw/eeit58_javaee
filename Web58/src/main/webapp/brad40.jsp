<%@page import="tw.brad.api.Bike"%>
<%@ page language="java" contentType="text/html; charset=UTF8"
    pageEncoding="UTF-8"%>
<%
	Bike b1 = new Bike();
	b1.upSpeed(); b1.upSpeed(); b1.upSpeed(); b1.upSpeed();
	
	request.setAttribute("b1", b1);
%>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		I am brad40<hr />
		<jsp:forward page="brad41.jsp"></jsp:forward>	
	</body>
</html>