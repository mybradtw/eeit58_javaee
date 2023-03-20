<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String max = request.getParameter("max");
	if (max != null){
		try{
			int intMax = Integer.parseInt(max);
			out.println((int)(Math.random()*intMax));
		}catch(Exception e){
			//out.println(e.toString());			
		}
	}
%>