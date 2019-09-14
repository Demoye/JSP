<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%!
      
      public String getBirthday(String userid){
        String result="";
        if(userid.length()==18){
	        String year=userid.substring(6,10);
	        String month=userid.substring(10,12);
	        String day=userid.substring(12,14);
	        result=year+"-"+month+"-"+day;
        }else{
            result="录入身份证不合法";
        }
        return result;
      }
     %>
<table border="1" align="center">
   <tr>
     <th>身份证</th>
     <th>生日</th>
   </tr>
   <tr>
         <td>010020199601026929</td>
         <td><%=getBirthday("010020199601026929")%></td>
    </tr>
    <tr>
         <td>010020199711126928</td>
         <td><%=getBirthday("010020199711126928")%></td>
     </tr>
</table>

</body>
</html>