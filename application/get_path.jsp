<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<html>
	<head>
		<title>通过内置对象application获取虚拟目录对应的绝对路径</title>
	</head>
	<body>
		<%
			String path = application.getRealPath("/"); //得到当前虚拟目录下对应的真实路径，即当前web应用的根目录
		%>
		<h2>真实路径: <%=path%></h2>
	</body>
</html>