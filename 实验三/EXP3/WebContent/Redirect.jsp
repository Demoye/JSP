<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>重定向</title>
</head>
<body>
  
 <%
  HttpSession se =request.getSession();
  se.setAttribute("username", "独孤求败");
  se.setAttribute("password", "123456");
  response.sendRedirect("result.jsp");
 %>
</body>
</html>