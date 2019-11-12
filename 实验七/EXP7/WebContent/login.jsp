<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="login">
		<table>
			<tr>
				<th colspan="2">登录界面</th>
			</tr>
			<tr>
				<td>账号</td>
				<td><input type="text" id="username" name="name"
					value="${name}"></td>
			</tr>
			<tr>
				<td>密码：</td>
				<td><input type="text" id="password" name="password"
					value="${password}"></td>
			</tr>
			<tr>
				<td><input type="submit" value="提交"></td>
				<td><font color="red">${error}</font></td>
			</tr>
		</table>
	</form>
</body>
</html>