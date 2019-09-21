<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>重定向的页面</title>
</head>
<body>

   用户名：<%=request.getSession().getAttribute("username") %><br><br>
   密     码：<%=request.getSession().getAttribute("password") %>  
</body>
</html>