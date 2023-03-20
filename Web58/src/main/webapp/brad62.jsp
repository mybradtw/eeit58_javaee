<%@ page language="java" contentType="text/html; charset=UTF8"
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
	<c:if test="${!empty param.delid }">
		<sql:update>
			DELETE FROM member WHERE id = ?
			<sql:param>${param.delid }</sql:param>
		</sql:update>
	</c:if>
	<sql:query var="rs">
		SELECT * FROM member
	</sql:query>
	
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<script>
		function delAlert(who){
			var isDel = confirm("是否刪除*" + who + "*?");
			return isDel;
		}
	</script>
	<body>
		<a href="brad63.jsp">Add New</a>
		<hr />
		<table border="1" width="100%">
			<tr>
				<th>#</th>
				<th>Account</th>
				<th>Realname</th>
				<th>Birthday</th>
				<th>Del</th>
				<th>Edit</th>
			</tr>
			<c:forEach items="${rs.rows }" var="row">
				<tr>
					<td>${row.id }</td>
					<td>${row.account }</td>
					<td>${row.realname }</td>
					<td>${row.birthday }</td>
					<td><a href="?delid=${row.id }" onclick="return delAlert('${row.account }');">Delete</a></td>
					<td><a href="brad64.jsp?editid=${row.id }">Edit</a></td>
				</tr>
			</c:forEach>
		</table>	
	
	</body>
</html>