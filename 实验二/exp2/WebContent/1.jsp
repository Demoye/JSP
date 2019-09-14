<%@ page language="java" import="java.util.*,exp2.Student" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>学生信息</title>
</head>
<body>
	<table border="1" width="80%" align="center">
	  <tr>
	    <th>学号</th>
	    <th>姓名</th>
	    <th>性别</th>
	    <th>班级</th>
	    <th>成绩</th>
	  </tr>
	  <%
	  Student s1= new Student("001","李白","男","01",723.0);
	  Student s2= new Student("002","孟浩然","男","02",689.0);
	  Student s3= new Student("003","杨玉环","女","03",600.0);
	  ArrayList arry = new ArrayList();
	  arry.add(s1);
	  arry.add(s2);
	  arry.add(s3);
	  for(int i=0;i<arry.size();i++){
     	 Student stu =(Student)arry.get(i);
	  %>
	  <tr>
             <td><%=stu.getNum()%></td>
             <td><%=stu.getName()%></td>
             <td><%=stu.getSex()%></td>
             <td><%=stu.getClassroom()%></td>
             <td><%=stu.getGrade()%></td>
          </tr>
	    <%} %>
	</table>
</body>
</html>