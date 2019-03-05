<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<html>
	<head>
		<title>获取request请求的其他信息</title>
	</head>
	<body>
		<%
			String method = request.getMethod();       //获取访问方式：get、post
			String ip = request.getRemoteAddr();       //获取客户端的ip地址
			String path = request.getServletPath();    //获取用户想要访问的页面在服务器上的路径
			String context = request.getContextPath(); //获取上下文资源名称
		%>
		
		<h3>请求方式：<%=method%></h3>
		<h3>ip地址：<%=ip%></h3>
		<h3>访问路径：<%=path%></h3>
		<h3>上下文名称：<%=context%></h3>
	</body>
</html>