<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
  String path= request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"
  +request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>foreach</title>
</head>
<body>
<%
   Map map= new HashMap();
   map.put("百度","http://www.baidu.com");
   map.put("雅虎","http://cn.yahoo.com");
   map.put("谷歌","http://www.google.com");
   request.setAttribute("map", map);
%>
<table border="1">
<c:forEach items="${map }" var="entry">
<tr>
   <td><c:out value="${entry.key }"/></td>
   <td><c:out value="${entry.value }"/></td>
   <br/>
</tr>
</c:forEach>
</table>
</body>
</html>