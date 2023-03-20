<%@page import="tw.brad.api.Log"%>
<%@page import="tw.brad.api.Brad17"%>
<%@ page language="java" contentType="text/html; charset=UTF8"
    pageEncoding="UTF-8"%>
<%
	String view = "brad43";
	String viewer = String.format("%s.jsp", view);
	
	String x = request.getParameter("x");
	String y = request.getParameter("y");
	
	if (x != null && y != null){
		Brad17 brad17 = new Brad17(x, y);
		int r = brad17.plus();
		request.setAttribute("x", x);
		request.setAttribute("y", y);
		request.setAttribute("r", r + "");
		
		//System.out.print("Hello, World");
		Log.mesg("Hello, World");
	}else{
		request.setAttribute("x", "");
		request.setAttribute("y", "");
		request.setAttribute("r", "");
	}
	
	
%>
<jsp:forward page="<%= viewer %>"></jsp:forward>