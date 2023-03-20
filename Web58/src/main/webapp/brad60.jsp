<%@page import="java.util.Properties"%>
<%@ page language="java" contentType="text/html; charset=UTF8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:catch var="error">
<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	Properties prop = new Properties();
	prop.put("user", "root");
	prop.put("password", "root");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/iii", prop);
	String sql = "INSERT INTO cust (cname,tel, birthday) VALUES (?,?,?)";
	PreparedStatement pstmt =  conn.prepareStatement(sql);
	pstmt.setString(1, "OK");
	pstmt.setString(2, "0912-123456");
	pstmt.setString(3, "1999-02-03");
	int n = pstmt.executeUpdate();
	pageContext.setAttribute("n", n);
%>    
</c:catch> 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<c:if test="${!empty error }">Server Busy:${error }</c:if>
		<c:choose>
			<c:when test="${n > 0 }">OK</c:when>
			<c:otherwise>XX</c:otherwise>
		</c:choose>
	</body>
</html>