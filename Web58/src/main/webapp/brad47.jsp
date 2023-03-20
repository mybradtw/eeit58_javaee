<%@ page language="java" contentType="text/html; charset=UTF8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	int id2 = Integer.parseInt(id);
	String account = request.getParameter("account");
	String realname = request.getParameter("realname");
%>

<jsp:useBean id="member" class="tw.brad.api.Member"></jsp:useBean>
<jsp:setProperty property="id" name="member" value="<%= id2 %>"/>
<jsp:setProperty property="account" name="member" value="<%= account %>"/>
<jsp:setProperty property="realname" name="member" value="<%= realname %>"/>


<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		Member:
		<jsp:getProperty property="id" name="member"/> |
		<jsp:getProperty property="account" name="member"/> |
		<jsp:getProperty property="realname" name="member"/>	
	</body>
</html>