<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<jsp:useBean id="user" scope="page" class="com.hnu.cloudmining.SimpleBean"/>	<!-- id 为对象名，scope为对象的有效范围，class为要实例化的类-->
<html>
	<head>
		<title>用useBean的jsp标签来自动实例化对象</title>
	</head>
	<body>
		<%
			user.setName("肖伟");
			user.setAge(23);
		%>
		<h2>姓名：<%=user.getName()%></h2>
		<h2>年龄：<%=user.getAge()%></h2>
	</body>
<html>