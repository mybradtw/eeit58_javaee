<%@ page language="java" contentType="text/html; charset=UTF8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		${paramValues.habbit[0] }
		${paramValues.habbit[1] }
		${paramValues.habbit[2] }
		${paramValues.habbit[3] }
		${paramValues.habbit[4] }
		${paramValues.habbit[5] }
		<hr />
		Method: <%= request.getMethod() %><br />
		Method: ${pageContext.request.method }<br />
		IP: <%= request.getRemoteAddr() %><br />
		IP: ${pageContext.request.remoteAddr }<br />
		Locale: <%= request.getLocale() %><br />
		Locale: ${pageContext.request.locale }<br />
		Language: <%= request.getLocale().getDisplayLanguage() %><br />
		Language: ${pageContext.request.locale.displayLanguage }<br />
		
	
	</body>
</html>