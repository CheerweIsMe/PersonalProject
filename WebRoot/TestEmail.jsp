<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'TestEmail.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <form action="${pageContext.request.contextPath}/registerUser.do" method="post">
								<label>你的名字 *</label> <input name="name" class="form-control" type="text">
								<label>你的邮箱 *</label> <input name="email" type="email">
								<label>密码 *</label> <input id="password" name="password" class="form-control" type="Password">
								<label>确认密码 *</label> <input id="password1" class="form-control" name="password1" onblur="checkPassword()"
									type="Password">	
						
								<button id="regist" type="submit"  >提交</button>
						</form>
  </body>
</html>
