<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>计算器</title>
       <script type="text/javascript" >
	    	function onClickCheck(){
	    		if(document.computer.firstnumber.value==""||document.computer.secondnumber.value==""){
	    			window.alert("该文本框里面的内容不能为空!!");
	    			return false;
	    		}
	    		if(Math.round(document.computer.firstnumber.value)!=document.computer.firstnumber.value||
			        Math.round(document.computer.secondnumber.value)!=document.computer.secondnumber.value){
	    			window.alert("输入的字符非法!!");
	    			return false;
	    		}
	            if(document.computer.cp.value == "/" && document.computer.secondnumber.value == 0){
	            	window.alert("除数不能为零");
                     return false;
                }
	    	}
	    </script>


</head>
<body bgcolor="yellow">
   <h2>我的计算器</h2>
   <hr border="1" >
   <form action="" name="computer" method="post">
           请输入第一个数：<input type="text" style="50px" value="" name="firstnumber"><br><br>
           请选择运行方式 ：<select name="cp" id="cp">
			   <option value="+">+</option>
			   <option value="-">-</option>
			   <option value="*">*</option>
			   <option value="/">/</option>
			   </select>
			   <br><br>
          请输入第二个数：<input type="text" style="50px" value="" name="secondnumber" id="secondnumber"><br><br>
             <input type="submit" name="sub" value="计算" onclick="onClickCheck()">
             <input type="reset"  name="res" value="重置">
             <br><br>
        结果：<input type="text" style="50px" value="" name="result" id="result">
     <%
			//接受第一个数
			String num1 = request.getParameter("firstnumber");
			//接受第二个数
			String num2 = request.getParameter("secondnumber");
			//接受运算符号
			String cp = request.getParameter("cp");
			//计算
			int firstnumber=0;
			int secondnumber=0;
			int result=0;
	   if (num1 != null) {
		   firstnumber = Integer.parseInt(num1);
		   secondnumber = Integer.parseInt(num2);
			if(cp.equals("+")){
			 	result=firstnumber+secondnumber;
			}
			else if(cp.equals("-")){
				result=firstnumber-secondnumber;
			}
			else if(cp.equals("*")){
				result=firstnumber*secondnumber;
			}
			else{
				result=firstnumber/secondnumber;
			}
			
		 %>
		 <script type="text/javascript">
						
						var text=document.getElementById("result");
						text.value=<%=result%>;
				</script>
		<%
	   }
		%>

</form>

</body>
</html>