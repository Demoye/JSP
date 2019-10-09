<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="userFrom" class="Bean.ELUser" scope="session" />
    <jsp:setProperty property="*" name="userFrom"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
用户昵称：${userFrom.username}<br>
密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：${userFrom.userpassword}<br>
性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：${userFrom.sex}<br>
爱&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;好：
${userFrom.hobby[0]}&nbsp;&nbsp;${userFrom.hobby[1]}&nbsp;&nbsp;${userFrom.hobby[2]}&nbsp;&nbsp;${userFrom.hobby[3]}<br>
</body>
</html>