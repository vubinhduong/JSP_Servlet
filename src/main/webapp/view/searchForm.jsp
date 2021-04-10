<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Search</title>
	<link rel="stylesheet"
	href="http://localhost:8080/JSP_Servlet/resources/css/style.css"
	type="text/css">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div style="padding-top: 40px; padding-left: 30px; font-size: 18px;">
		<form action="/JSP_Servlet/result" method="GET">
			<label>Nhập tên sách bạn muốn tìm: </label> 
			<hr style="color: #fff; border: none;">
			<input type="text" name="input" style="font-size: 18px;">
			<input type="submit" style="font-size: 18px;">
			<hr style="color: #fff; border: none;">
		</form>
		<i>*Không nhập gì để tìm kiếm tất cả sách</i>
	</div>
</body>
</html>