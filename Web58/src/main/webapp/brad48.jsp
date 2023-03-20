<%@page import="tw.brad.api.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF8"
    pageEncoding="UTF-8"%>
<%
	Member member2 = new Member(12,"bbb","ccc","1997-02-03");
	request.setAttribute("member22", member2);
%>
<jsp:useBean id="member" class="tw.brad.api.Member"></jsp:useBean>
<jsp:setProperty property="id" name="member" value="${param.id }"/>
<jsp:setProperty property="account" name="member" value="${param.account }"/>
<jsp:setProperty property="realname" name="member" value="${param.realname }"/>
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
		<hr />
		Member:
		${member.id } | ${member.account } | ${member.realname }
		<hr />
		Member:
		${member22.id } | ${member22.account } | ${member22.realname }
		<hr />
		<jsp:declaration>
			Integer a;
			String b;
		</jsp:declaration>
		<jsp:scriptlet>
			a = 10; b = "Brad";
		</jsp:scriptlet>
		a = <jsp:expression>a</jsp:expression><br />
		b = <jsp:expression>b</jsp:expression><br />
		<hr />
		${member }
		
		
			
	</body>
</html>