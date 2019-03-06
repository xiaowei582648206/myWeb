<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<html>
	<head>
		<title>注销登录,使session失效</title>
	</head>
	<body>
		<%
			response.setHeader("refresh","3;URL=login.jsp");  // 告诉浏览器，3秒后自动向服务器发起对login.jsp页面的请求
			session.invalidate();	 //使session失效
		%>
		<h2>您已经成功退出系统，3秒后自动跳转</h2>
		<h3>如果没有跳转，请点击<a href="login.jsp">这里</a></h3>
	</body>
</html>