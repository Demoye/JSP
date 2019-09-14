<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h1>注册成功啦，恭喜</h1>

	<%
		request.setCharacterEncoding("utf-8");
	%>
	用户名：<%=request.getParameter("username")%>
	<br> 密码：<%=request.getParameter("password")%>
	<br> 性别：<%=request.getParameter("sex")%>
	<br> 爱好：
	<%
		String[] select = request.getParameterValues("hobby");
		if (select.length == 0) {
			out.print("无");
		} else {
			out.print(select[0]);
			for (int i = 1; i < select.length; i++) {
				out.print("、" + select[i]);
			}
		}
	%>
	<br> 学历：<%=request.getParameter("education")%>
	<br> 备注说明：<%=request.getParameter("tip")%>
	<br>
</body>
</html>