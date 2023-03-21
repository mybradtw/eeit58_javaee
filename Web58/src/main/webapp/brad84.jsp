<%@page import="tw.brad.api.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String account = request.getParameter("account");
	String passwd = request.getParameter("passwd");
	
	if (account.equals("brad") && passwd.equals("123456")){
		Member member = new Member();
		member.setId(123);
		member.setAccount("brad");
		member.setRealname("Brad Chao");
		session.setAttribute("member", member);
		response.sendRedirect("brad85.jsp");
	}else{
		session.invalidate();
		response.sendRedirect("brad83.html");
	}
	
%>