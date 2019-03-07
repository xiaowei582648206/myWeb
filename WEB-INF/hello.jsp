<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>
<html>
	<head>
		<title>Web的安全性之WEB-INF目录</title>
	</head>
	<body>
		<%
			out.println("<h1>Hello world</h1>"); // 当jsp页面放到WEB-INF目录，具有很高的安全性，不会被外界直接通过url地址访问
			out.println("<h2>my java web</h2>"); //必须要修改WEB-INF/web.xml文件，配置当前jsp页面的映射关系，才能使当前jsp页面对外界可见
		%>
	</body>
</html>