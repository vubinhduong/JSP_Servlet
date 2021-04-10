<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet"
	href="http://localhost:8080/JSP_Servlet/resources/css/style.css"
	type="text/css">
</head>
<body>
	<div style="width: 15%; height: 40px; float: right; font-size: 20px;">
		<p>
			<%=session.getAttribute("username")%>&nbsp |
			<a style="text-decoration: none;" href="/JSP_Servlet">&nbspđăng xuất</a>
		</p>
	</div>
</body>
</html>