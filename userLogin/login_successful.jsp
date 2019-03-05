<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<html>
	<head>
		<title>登录成功</title>
	</head>
	<body>
		<%
			String userid = request.getParameter("userid");
			String login_name = request.getParameter("login_name");
		%>
		<center>
			<h1><font color="red">登录操作</font></h1>
			<h2>登录成功，欢迎<%=userid%>:<%=login_name%>光临</h2>
		</center>
	</body>
</html>