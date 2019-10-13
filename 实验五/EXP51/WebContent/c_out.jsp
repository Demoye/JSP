<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>

 
 <%--default的两种使用方式--%>
<%--如果在uri中输入参数name=jgl,则显示输入的value中的值,否则显示默认信息(default)--%>

<c:out value="${param.name}" default="welecome jgl to my website!"/>

<c:out value="${param.name}">welecome jgl to my website!</c:out>

 

<%--value属性是必添的,escapeXml属性是true时,不解析特殊字符,false时,解析特殊字符--%>

<c:out value="${param.name}" ecapeXml="false">&lt;c:out&gt;</c:out>


</body>
</html>