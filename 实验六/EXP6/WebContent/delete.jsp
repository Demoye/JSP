<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
  <div style="margin:auto; width:80%">
    <sql:setDataSource var="connection" driver="com.mysql.jdbc.Driver"
         url="jdbc:mysql://localhost/zb1018145?serverTimezone=Asia/Shanghai&characterEncoding=utf-8"
         user="root" password=""/>     
    <sql:update dataSource="${connection}" var="count">
      DELETE FROM employees WHERE id>5; 
    </sql:update>
    <sql:query dataSource="${connection }" var="result">
       SELECT * from employees;
    </sql:query>
    <table border="1" width="100%">
      <tr>
         <th>编号</th>
         <th>名字</th>
         <th>薪水</th>
         <th>地址</th>
      </tr>
      <c:forEach var="row" items="${result.rows }">
         <tr>
            <td><c:out value="${row.id }"/></td>
            <td><c:out value="${row.name }"/></td>
            <td><c:out value="${row.salary }"/></td>
            <td><c:out value="${row.address }"/></td>
         </tr> 
      </c:forEach>  
    </table>
 </div>
</body>
</html>