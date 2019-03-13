<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<html>
	<head>
		<title>使用Filter过滤器实现用户登录验证</title>
	</head>
	<body>
		<%
			String userid =(String) session.getAttribute("userid");
		%>
		<h3><font color="red" > 欢迎<%=userid%>，登录成功 </font></h3>
	</body>
</html>