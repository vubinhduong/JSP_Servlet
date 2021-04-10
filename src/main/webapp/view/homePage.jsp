<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>List Books</title>
	<link rel="stylesheet"
	href="http://localhost:8080/JSP_Servlet/resources/css/style.css"
	type="text/css">
</head>
<body style="background-color: #eee;">
	<jsp:include page="header.jsp"></jsp:include>
	<div style="padding: 50px 0px 0px 200px; font-size: 25px;">
		<p style="green;">Từ khóa đã chọn: <span style="color: red">${input}</span></p>
	</div>
	<div class="container" style="margin: -3% 0%;">
		<table id="books-table" style="margin-top: 50px;">
			<thead>
				<tr>
					<th>Mã sách</th>
					<th>Tên sách</th>
					<th>Nhà xuất bản</th>
					<th>Giá</th>
					<th>Hành động</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${listBook}" var="item">
					<tr>
						<td>${item.id}</td>
						<td>${item.name}</td>
						<td>${item.publisher}</td>
						<td>${item.price}</td>
						<td>&nbsp
							<a href="/JSP_Servlet/update?id=${item.id}">Sửa</a>
							&nbsp&nbsp&nbsp&nbsp
							<a href="/JSP_Servlet/delete?id=${item.id}">Xóa</a>
							&nbsp
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>