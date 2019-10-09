<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<form action="">
	第一个数字：<input type="text" name="firstnum"><br>
	第二个数字：<input type="text" name="secondnum"><br>
	&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	<input type="submit" value="提交">
	&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	<input type="reset" value="重置">
</form>
<br>
结果：${param.firstnum gt param.secondnum?param.firstnum:param.secondnum}
</body>
</html>