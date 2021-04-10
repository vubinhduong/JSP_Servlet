<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div style="width: 15%; height: 40px; float: right; font-size: 20px;">
		<p>
			<%=session.getAttribute("username")%>
			&nbsp | <a style="text-decoration: none;" href="/JSP_Servlet">&nbsp đăng
				xuất</a>
		</p>
	</div>
</body>
</html>