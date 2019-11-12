<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>输入三角形的三条边</title>
</head>
<body>
<font color="red"> ${sessionScope.error } </font>

	<form action="triangleServlet" method="get">
		<hr>
		<h2>请输入三角形的三条边的长度</h2>
		<p>请输入第一条边长度：<input type="text" name="length1"></p>
		<p>请输入第二条边长度：<input type="text" name="length2"></p>
		<p>请输入第三条边长度：<input type="text" name="length3"></p>
		<p><input type="submit" value="计算面积"></p>
	</form>
	<br>
</body>
</html>