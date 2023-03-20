<%@ page language="java" contentType="text/html; charset=UTF8"
    pageEncoding="UTF-8"%>
<%@ page import="tw.brad.api.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>    
<!DOCTYPE html>
<html>
	<c:if test="${!empty param.account }">
		<c:if test="${pageContext.request.method == 'GET' }">
			<c:redirect url="brad62.jsp"></c:redirect>
		</c:if>
		<sql:setDataSource
			driver="com.mysql.cj.jdbc.Driver"
			url="jdbc:mysql://localhost/iii"
			user="root"
			password="root"
			/>
		<sql:update>
			INSERT INTO member (account,passwd,realname,birthday) VALUES (?,?,?,?)
			<sql:param>${param.account }</sql:param>
			<sql:param>${BradUtils.encPasswd(param.passwd) }</sql:param>
			<sql:param>${param.realname }</sql:param>
			<sql:param>${param.birthday }</sql:param>
		</sql:update>
		<c:redirect url="brad62.jsp"></c:redirect>
	</c:if>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<form method="post">
			Account: <input type="text" name="account" /><br />
			Password: <input type="password" name="passwd" /><br />
			Realname: <input type="text" name="realname" /><br />
			Birthday: <input type="date" name="birthday" /><br />
			<input type="submit" value="Add" />
		</form>	
	</body>
</html>