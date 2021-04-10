<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Search Page</h1>
	<%
		String name = session.getAttribute("username").toString();
		out.print("Welcome " + name);
	%>
	<form action="/JSP_Servlet/search" method="GET">
		<label>Nhập tên sách bạn muốn tìm: </label><input type="text" name="input">
		<input type="submit">
	</form>
	<i>*Không nhập gì để tìm kiếm tất cả sách</i>
</body>
</html>