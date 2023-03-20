<%@page import="java.util.HashMap"%>
<%@page import="java.util.LinkedList"%>
<%@page import="org.json.JSONObject"%>
<%@page import="org.json.JSONArray"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!--  https://data.coa.gov.tw/Service/OpenData/ODwsv/ODwsvTravelStay.aspx  -->

<c:import url="https://data.coa.gov.tw/Service/OpenData/ODwsv/ODwsvTravelStay.aspx" var="data"></c:import>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	<%
		String data = (String)pageContext.getAttribute("data");
	
		JSONArray root = new JSONArray(data);
		/*
		out.print(root.length() + "<hr />");
		for (int i=0; i<root.length(); i++){
			JSONObject row = root.getJSONObject(i);
			out.print(row.getString("Name")+"<br />");
		}
		*/
		
		LinkedList<HashMap<String,String>> hotels = new LinkedList<>();
		for (int i=0; i<root.length(); i++){
			JSONObject row = root.getJSONObject(i);
			HashMap<String,String> hotel = new HashMap<>();
			hotel.put("name", row.getString("Name"));
			hotel.put("addr", row.getString("Address"));
			hotel.put("tel", row.getString("Tel"));
			hotels.add(hotel);
		}
		
		pageContext.setAttribute("hotels", hotels);
	%>
	
	<table border="1" width="100%">
		<tr>
			<th>Name</th>
			<th>Tel.</th>
			<th>Address</th>
		</tr>
		<c:forEach items="${hotels }" var="hotel">
			<tr>
				<td>${hotel.name }</td>
				<td>${hotel.tel }</td>
				<td>${hotel.addr }</td>
			</tr>
		</c:forEach>
	</table>
	
	
		
	
	</body>
</html>