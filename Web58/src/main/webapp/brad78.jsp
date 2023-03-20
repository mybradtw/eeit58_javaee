<%@page import="org.json.JSONArray"%>
<%@page import="org.json.JSONObject"%>
<%@page import="netscape.javascript.JSObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	input: page = n
	output:
	{
		error: 0, 	// 0: success; other: error
		page: n,
		data: [
			       {
			    	   name: xxx,
			    	   tel: 123
			       },
			       {
			    	   name: xxx,
			    	   tel: 123
			       },
			       {
			    	   name: xxx,
			    	   tel: 123
			       }
		       ]
	}
	*/
	
	int p = Integer.parseInt(request.getParameter("page"));
	JSONObject obj = new JSONObject();
	if (p<=0){
		obj.put("error", 1);
		obj.put("page", p);
		out.print(obj.toString());
		return;
	}
	if (p>10){
		obj.put("error", 2);
		obj.put("page", p);
		out.print(obj.toString());
		return;
	}
	
	obj.put("error", 0);
	obj.put("page", p);
	
	JSONArray ary = new JSONArray();
	for (int i=0; i<7; i++){
		JSONObject row = new JSONObject();
		row.put("name", "Brad" + (int)(Math.random()*100+1));
		row.put("tel", "tel:" + (int)(Math.random()*100+1));
		ary.put(row);
	}
	obj.put("data", ary);
	out.print(obj.toString());
%>