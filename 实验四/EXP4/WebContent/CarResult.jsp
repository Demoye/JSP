<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <jsp:useBean id="car" class="Bean.Car" scope="session"></jsp:useBean>
    <jsp:setProperty property="*" name="car"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
颜色：<jsp:getProperty property="color" name="car" /><br>
是否安装空调：<jsp:getProperty property="isAir" name="car" />
</body>
</html>