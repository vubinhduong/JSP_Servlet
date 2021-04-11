<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Book</title>
<link rel="stylesheet"
	href="http://localhost:8080/JSP_Servlet/resources/css/style.css"
	type="text/css">
</head>
<body style="background-color: #ddd;">
	<form action="/JSP_Servlet/updated" method="GET">
		<div class="container">
			<div class="register-form">
				<form id="register-form">
					<div class="header">
						<h1>Update</h1>
					</div>
					<hr>
					<div class="content">
						<div class="item">
							<div class="r-label">
								<label>Mã sách:</label>
							</div>
							<div class="r-input">
								<input class="input" id="username" type="text" name="book_id" value="${item.id}" readonly="readonly">
							</div>
						</div>
						<div class="item">
							<div class="r-label">
								<label>Tên sách:</label>
							</div>
							<div class="r-input">
								<input class="input" id="password" type="text" name="book_name" value="${item.name}">
							</div>
						</div>
						<div class="item">
							<div class="r-label">
								<label>NXB:</label>
							</div>
							<div class="r-input">
								<input class="input" id="publisher" type="text" name="publisher" value="${item.publisher}">
							</div>
						</div>
						<div class="item">
							<div class="r-label">
								<label>Giá:</label>
							</div>
							<div class="r-input">
								<input class="input" id="price" type="text" name="price" value="${item.price}"> 
							</div>
						</div>
					</div>
					<div class="footer">
						<input class="submit-btn" type="submit" value="Update" style="width: 150px; margin-left: 15px;"/>
						<form action="/JSP_Servlet/delete?id=">
    						<input class="submit-btn" style="width: 150px; margin-left: 30px;" value="Cancel" type="submit" value="Cancel" />
						</form>
					</div>
				</form>
			</div>
		</div>
	</form>
</body>
</body>
</html>