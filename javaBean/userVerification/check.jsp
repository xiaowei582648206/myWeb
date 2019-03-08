<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<jsp:useBean id="reg" scope="request" class="com.hnu.cloudmining.Register"/> <!-- 要想跳转后能还获得bean对象，则跳转前后bean对象的名字必须一致，否则就报错当前bean对象事先没有被introduce引入 -->
<jsp:setProperty name="reg" property="*"/>  			<!-- 在这里接收前台参数，重新为reg对象每一个属性设置值-->
<html>
	<head>
		<title>用户信息验证</title>
	</head>
	<body>
		<h3>接收前台表单传递过来的参数构建javaBean对象，并调用Bean的方法验证用户的信息是否符合格式要求</h3>
		<%
			boolean flag = reg.isValidate();
			if(flag){
		%>
				<jsp:forward page="success.jsp"/>
		<%	
			}else{
		%>
				<jsp:forward page="index.jsp"/>  <!-- 服务器跳转，地址栏不变，直接显示index.jsp的页面 -->
		<%	
			}
		%> 
	</body>
</html>