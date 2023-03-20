<%@ page language="java" contentType="text/html; charset=UTF8"
    pageEncoding="UTF-8"%>
<%@ page import="tw.brad.api.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		Math.random() => <%= Math.random() %><br />	
		Math.random() => ${Math.random() }<br />
		${BradUtils.sayYa() }<br />
		${BradUtils.sayYa(param.name) }<br />
		
		
		
	</body>
</html>