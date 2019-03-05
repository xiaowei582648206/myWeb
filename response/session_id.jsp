<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<html>
	<head>
		<title>获取服务器给用户设置的session_id</title>
	</head>
	<body>
		<%
			String session_id = session.getId();
		%>
		<h2><font color="red">Session_Id :  <%=session_id%></font></h2>
		<h2><font color="red">Session_Id 长度:  <%=session_id.length()%></font></h2>
	</body>
</html>