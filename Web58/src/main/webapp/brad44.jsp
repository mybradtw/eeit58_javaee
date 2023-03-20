<%@ page language="java" contentType="text/html; charset=UTF8"
    pageEncoding="UTF-8"%>
<%
	String x = (String)request.getAttribute("x");
	String y = (String)request.getAttribute("y");
	String r = (String)request.getAttribute("r");
%>  
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h1>Brad Big CompanyV2</h1>
		<hr />
		<form action='brad42.jsp'>
			<input name='x' value="<%= x %>" />
			+
			<input name='y' value="<%= y %>" />
			<input type='submit' value='='/>
			<span><%= r %></span>
		</form>	
	</body>
</html>