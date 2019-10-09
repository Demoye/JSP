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
	语文：<input type="text" name="language"><br>
	英语：<input type="text" name="english"><br>
	数学：<input type="text" name="maths"><br>
	物理：<input type="text" name="physical"><br>
	化学：<input type="text" name="chemical"><br>
	&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	<input type="submit" value="提交">
	&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	<input type="reset" value="重置">
</form>

	总分：${param.language+param.english+param.maths+param.physical+param.chemical}<br>
	平均分：${param.language+param.english+param.maths+param.physical+param.chemical/5.0}
</body>
</html>