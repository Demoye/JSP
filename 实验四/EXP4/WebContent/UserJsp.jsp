<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<jsp:useBean class="Bean.User" id="user">	
</jsp:useBean>
<jsp:setProperty property="username" name="user" value="anne" />
<!DOCTYPE html>
<html>
<head>
<title>UserJsp.jsp</title>

</head>

<body>
	用户名：<jsp:getProperty property="username" name="user" />
</body>
</html>
