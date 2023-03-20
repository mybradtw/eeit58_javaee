<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if (request.getMethod().equals("POST")){
		String max = request.getParameter("max");
		if (max != null){
			try{
				int intMax = Integer.parseInt(max);
				out.println("brad72: " + (int)(Math.random()*intMax));
			}catch(Exception e){
				//out.println(e.toString());			
			}
		}
	}
%>