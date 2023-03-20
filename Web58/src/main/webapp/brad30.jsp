<%@ page language="java" contentType="text/html; charset=UTF8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h1>Brad Big Company</h1>
		<hr />
		<%
			out.print("Hello, World");
		%>	
		<hr />
		<%
			int lottery = (int)(Math.random()*49+1);
			out.print(lottery);
		%>
		<hr />
		<%
			out.print(lottery);
		%>
		<hr />
		<%= lottery %>		
	</body>
</html>