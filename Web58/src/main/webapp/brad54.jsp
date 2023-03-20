<%@page import="java.util.HashMap"%>
<%@page import="java.util.LinkedList"%>
<%@ page language="java" contentType="text/html; charset=UTF8"
    pageEncoding="UTF-8"%>
<%
	String[] var1 = {"Brad","Kevin","Tony", "David"};
	pageContext.setAttribute("var1", var1);
	
	String[] var2 = {"Brad2","Kevin2","Tony2", "David2"};
	//request.setAttribute("var1", var2);

	String[] var3 = {"Brad3","Kevin3","Tony3", "David3"};
	//session.setAttribute("var1", var3);

	String[] var4 = {"Brad4","Kevin4","Tony4", "David4"};
	//application.setAttribute("var1", var4);
	
	LinkedList<String> list = new LinkedList<>();
	list.add("Brad5"); list.add("Kevin5"); list.add("Tony5"); list.add("David5");
	pageContext.setAttribute("list", list);
	
	HashMap<String,String> map = new HashMap<>();
	map.put("user1", "Brad6");
	map.put("user2", "Kevin6");
	map.put("user3", "Tony6");
	map.put("user4", "David6");
	pageContext.setAttribute("map", map);
	
	
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	var1[0] = ${var1[0] }<br />
	var1[0] = ${pageScope.var1[0] }<br />
	var1[0] = ${requestScope.var1[0] }<br />
	var1[0] = ${sessionScope.var1[0] }<br />
	var1[0] = ${applicationScope.var1[0] }<br />
	list.get(1) = ${list[param.i] }<br />
	map.get("user3") = ${map["user3"] }<br />
	map.get("user4") = ${map.user4 }
	<hr /> 
	${10 + 3 }<br />
	${param.x + param.y }<br />
	${param.x == 11 }
	
	</body>
</html>