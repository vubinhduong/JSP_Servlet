<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<link rel="stylesheet"
	href="http://localhost:8080/JSP_Servlet/resources/css/style.css"
	type="text/css">
</head>
<body style="background-color: #ddd;">
	<form action="/JSP_Servlet/search" method="GET">
		<div class="container">
			<div class="register-form">
				<form id="register-form">
					<div class="header">
						<h1>Đăng nhập</h1>
					</div>
					<hr>
					<div class="content">
						<div class="item">
							<div class="r-label">
								<label>Username:</label>
							</div>
							<div class="r-input">
								<input class="input" id="username" type="text" name="name">
							</div>
						</div>
						<div class="item">
							<div class="r-label">
								<label>Password:</label>
							</div>
							<div class="r-input">
								<input class="input" id="password" type="password" name="pass">
							</div>
						</div>
					</div>
					<div class="footer">
						<input class="submit-btn" type="submit">
					</div>
				</form>
			</div>
		</div>
	</form>
</body>
</html>


