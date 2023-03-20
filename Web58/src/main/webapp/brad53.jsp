<%@ page language="java" contentType="text/html; charset=UTF8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			String method = request.getMethod();
			ServletRequest sr =  pageContext.getRequest();
			if (request == sr){
				out.print("same<br />");
			}
			
			if (sr instanceof HttpServletRequest){
				out.print("yes, i am <br />");
			}
		
		%>
	</body>
</html>