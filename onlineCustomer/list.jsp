<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@ page import= "java.util.*"%>
<html>
	<head>
		<title>显示所有在线用户</title>
	</head>
	<body>
		<%
			Set<String>  users = (Set<String>)this.getServletContext().getAttribute("online_users");
			Iterator it = users.iterator();
			while(it.hasNext()){
				String user = (String)it.next();
		%>
				<h3><%=user%></h3>
		<%
			}
		%>
	</body>
</html>