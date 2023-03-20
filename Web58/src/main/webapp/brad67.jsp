<%@page import="org.json.*"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String key = request.getParameter("key");

	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/iii", "root", "root");
	
	PreparedStatement pstmt;
	String sql = "SELECT * FROM food";
	if (key != null){
		sql += " WHERE name LIKE ? OR addr LIKE ? OR tel LIKE ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, "%" + key + "%");
		pstmt.setString(2, "%" + key + "%");
		pstmt.setString(3, "%" + key + "%");
		
	}else{
		pstmt = conn.prepareStatement(sql);	
	}
	
	ResultSet rs = pstmt.executeQuery();
	JSONArray root = new JSONArray();
	while (rs.next()){
		JSONObject obj = new JSONObject();
		obj.put("id", rs.getString("id"));
		obj.put("name", rs.getString("name"));
		obj.put("addr", rs.getString("addr"));
		obj.put("tel", rs.getString("tel"));
		obj.put("city", rs.getString("city"));
		obj.put("town", rs.getString("town"));
		root.put(obj);
	}
	
	out.print(root.toString().trim());
	
	
	
%>