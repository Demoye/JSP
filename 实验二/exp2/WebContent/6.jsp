<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

     <h3 align="center">欢迎注册Web前端编程学习网站</h3>
 <form action="result.jsp" method="post">
   <table border="1" align="center" width="500">
      <tr>
          <td align="left">用户名：</td>
           <td><input type="text"  name="username"></td>
      </tr>
       <tr>
          <td align="left">密      码：</td>
           <td><input type="password" name="password" ></td>
       </tr>
      <tr>
          <td align="left">性别：</td>
           <td>
           <input  type="radio" name="sex"  value="男"  id="sex_0">男
           <input  type="radio" name="sex"  value="女" id="sex_1">女    
           </td>
      </tr>
      <tr>
          <td align="left">爱好：</td>
           <td>
           <input  type="checkbox" name="hobby" id="hobby_0"  value="唱歌">唱歌
           <input  type="checkbox" name="hobby" id="hobby_1" value="跳舞">跳舞
           <input  type="checkbox" name="hobby" id="hobby_2" value="运动">运动
           <input  type="checkbox" name="hobby" id="hobby_3" value="阅读">阅读 
           </td>
      </tr> 
      <tr>
          <td align="left">学历：</td>
           <td>
			   <select name="education">
			   <option value="大学">大学</option>
			   <option value="大专">大专</option>
			   <option value="高中">高中</option>
			   </select>
           </td>
      </tr>  
      <tr>
          <td align="left">备注说明：</td>
           <td>
          <textarea name="tip" cols="20" rows="5" id="tip"></textarea>
           </td>
      </tr> 
       <tr>
           <td colspan="2" align="center">
         <input  type="submit"  name="submit" value="注册">
         <input  type="reset" name="reset" value="清空">
           </td>
      </tr>
     </table>
  </form>
</body>
</html>