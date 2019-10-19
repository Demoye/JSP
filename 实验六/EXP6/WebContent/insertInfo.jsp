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
      INSERT INTO employee(`EMP_ID`,`EMP_NAME`,`JOB`,`SALARY`,`DEPT`)
      VALUES ('5','王小明','manager','5000.00','20');
    </sql:update> 
    <sql:query dataSource="${connection }" var="result">
       SELECT * from employee;
    </sql:query>
    <table border="1" width="100%">
      <tr>
         <th>EMP_ID</th>
         <th>EMP_NAME</th>
         <th>JOB</th>
         <th>SALARY</th>
         <th>DEPT</th>
      </tr> 
      <c:forEach var="row" items="${result.rows }">
         <tr>
            <td><c:out value="${row.EMP_ID }"/></td>
            <td><c:out value="${row.EMP_NAME }"/></td>
            <td><c:out value="${row.JOB }"/></td>
            <td><c:out value="${row.SALARY }"/></td>
            <td><c:out value="${row.DEPT }"/></td>
         </tr>
      </c:forEach>
    </table>
 </div>
  
</body>
</html>