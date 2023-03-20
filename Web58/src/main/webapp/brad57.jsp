<%@ page language="java" contentType="text/html; charset=UTF8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- pageContext.setAttritube("x", 10) -->
<c:set var="x" value="10" />

<!-- request.setAttritube("x", 12) -->
<c:set var="x" value="12" scope="request" />
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	x = ${x }<br />
	x = ${requestScope.x }<br />
	<%= "Hello, World" %><br />
	<c:out value="Hello, World" /><br />
	x = <c:out value="${x }" /><br />
	i = <c:out value="${param.i }" default="no value" />
	<hr />
	<jsp:useBean id="member" class="tw.brad.api.Member"></jsp:useBean>
	<c:set target="${member }" property="id">123</c:set>
	<c:set target="${member }" property="account">Brad</c:set>
	<c:set target="${member }" property="realname">BradChao</c:set>
	<c:set target="${member }" property="birthday">1999-02-03</c:set>
	
	${member }<br />
	<c:remove var="member"/>
	${member }<br />
	
	</body>
</html>