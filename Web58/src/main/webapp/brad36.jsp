<%@ page language="java" contentType="text/html; charset=UTF8"
    pageEncoding="UTF-8"%>
<%
	int lottery1 = (int)(Math.random()*49+1);
	int lottery2 = (int)(Math.random()*49+1);
%>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h1>Brad Big Company</h1>
		<hr />
		<%@ include file="brad37.jsp" %>
		<hr />
		<jsp:include page="brad38.jsp">
			<jsp:param value="<%= lottery1 %>" name="x"/>
			<jsp:param value="<%= lottery2 %>" name="y"/>
		</jsp:include>
			
		<hr />	
	</body>
</html>