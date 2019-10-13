<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%
   int num =Integer.parseInt(request.getParameter("num"));
   for(int i=1;i<=num;i++){
	   for(int j=1;j<=i;j++){
		   out.print(i+"*"+j+"="+i*j+"  ");
	   }
	   out.print("<br>");
   }
%>
<br>
<%
    String countString = request.getParameter("num");
    int count =Integer.parseInt(countString);
    for(int i=1;i<=count;i++){
    	pageContext.setAttribute("i", i);
  %>
  ${param.num }*${i }=${param.num*i }
  <% 
    }
%>
</body>
</html>