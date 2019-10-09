<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<form action="CarResult.jsp" method="get">
	汽车颜色:<input type="text" name="color"><br>
	是否安装空调:<input type="radio" name="isAir" value="true">是
	<input type="radio" name="isAir" value="false">否
	<br>
	<input type="submit" value="提交">
	<input type="reset" value="重置">
</form>
<br>
</body>
</html>