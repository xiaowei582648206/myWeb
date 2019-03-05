<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<html>
	<head>
		<title>接收request参数</title>
	</head>
	<body>
		<!-- 设置统一的字符编码，使用utf-8格式解码从前台页面通过form表单提交的参数 -->
		<%
			request.setCharacterEncoding("utf-8");
			String text = request.getParameter("inputText");
		%>
		<h2><%=text%></h2>
	</body>
</html>