<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>    
<!DOCTYPE html>
<html>
	<sql:setDataSource
		driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost/iii"
		user="root"
		password="root"
		/>	
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<sql:transaction>
			<sql:update>
				INSERT INTO cust (cname,tel,birthday) VALUES (?,?,?)
				<sql:param>iii1</sql:param>
				<sql:param>123</sql:param>
				<sql:param>1999-01-02</sql:param>
			</sql:update>
			<sql:query var="rs">
				SELECT last_insert_id() lastid
			</sql:query>		
			${rs.rows[0].lastid }
			<sql:update>
				UPDATE cust SET cname = ? WHERE id = ?
				<sql:param>iii2</sql:param>
				<sql:param>${rs.rows[0].lastid }</sql:param>
			</sql:update>
			
			
		</sql:transaction>
	</body>
</html>