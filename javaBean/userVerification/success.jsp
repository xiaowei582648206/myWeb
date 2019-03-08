<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<jsp:useBean id="reg" scope="request" class="com.hnu.cloudmining.Register"/>
<html>
	<head>
		<title>验证成功</title>
	</head>
	<body>
		<h3>用户信息验证成功！</h3>
		<h3>姓名： <jsp:getProperty name="reg" property="name"/> </h3> 
		<h3>年龄： <jsp:getProperty name="reg" property="age"/> </h3> 
		<h3>邮箱： <jsp:getProperty name="reg" property="email"/> </h3> 
	</body>
</html>