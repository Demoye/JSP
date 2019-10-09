<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="ELResult.jsp">
	用户昵称：<input type="text" name="username"><br><br>
	密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：<input type="password" name="userpassword"><br><br>
	确认密码：<input type="password" name="confirmpassword"><br><br>
	性&nbsp;&nbsp;&nbsp;&nbsp;别：<input type="radio" name="sex" value="男">男
	<input type="radio" name="sex" value="女">女<br><br>
	爱&nbsp;&nbsp;&nbsp;&nbsp;好：<input type="checkbox" name="hobby" value="体育">体育
	<input type="checkbox" name="hobby" value="美术">美术
	<input type="checkbox" name="hobby" value="音乐">音乐
	<input type="checkbox" name="hobby" value="旅游">旅游<br><br>
	<input type="submit" value="提交">
	<input type="reset" value="重置">
</form>
</body>
</html>