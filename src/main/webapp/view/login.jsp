<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head></head>
<body>
	<h1>Login Page</h1>
	<form action="/JSP_Servlet/login" method="GET">
		<table>
			<tr>
				<td><label>Tên đăng nhập: </label></td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td><label>Mật khẩu: </label></td>
				<td><input type="text" name="pass"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit"></td>
			</tr>
		</table>
	</form>
</body>
</html>


