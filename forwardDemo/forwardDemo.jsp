<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<html>
	<head>
		<title>跳转指令</title>
	</head>
	<body>
		<%
			String name="xiaowei";
			String value="hello,xiaowei ~";
		%>
		<jsp:forward page="targetPage.jsp">
			<jsp:param name="name" value="<%= name %>"/>
			<jsp:param name="info" value="<%= value %>"/>
		</jsp:forward>
	</body>
</html>