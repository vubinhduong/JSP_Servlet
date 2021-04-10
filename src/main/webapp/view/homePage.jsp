<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://localhost:8080/JSP_Servlet/resources/css/style.css"
	type="text/css">
</head>
<body style="background-color: #fff;">
	<div class="container">
		<table id="books-table" style="margin-top: 50px;">
			<thead>
				<tr>
					<th>Mã sách</th>
					<th>Tên sách</th>
					<th>Nhà xuất bản</th>
					<th>Giá</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${listBook}" var="item">
					<tr>
						<td>${item.id}</td>
						<td>${item.name}</td>
						<td>${item.publisher}</td>
						<td>${item.price}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>