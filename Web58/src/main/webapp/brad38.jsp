<%@ page language="java" contentType="text/html; charset=UTF8"
    pageEncoding="UTF-8"%>
I am brad38.jsp<br />
<%
	out.print(request.getParameter("x") + "<br />");
	out.print(request.getParameter("y") + "<br />");
%>