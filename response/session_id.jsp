<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<html>
	<head>
		<title>获取服务器给用户设置的session_id</title>
	</head>
	<body>
		<%
			String session_id = session.getId();
			Cookie[] c = request.getCookies();		//通过request对象获取服务器设置在浏览器上的所有cookie,
			for(int i = 0;c!=null && i<c.length;i++){ //第一次通过通过链接请求session_id.jsp页面时是没有任何cookie的，因为服务器还有没有给客户端设置任何cookie，所以第一次访问jsp这个页面时，c =null
				String name = c[i].getName();		  //只要访问当前web应用的任何一个资源，服务器就会为客户端创建一个session,接下来只有浏览器没有关闭，所有http请求和http响应都共用同一个session
				String value = c[i].getValue();
		%>
				<h3> <%=name%> --> <%=value%></h3>
		<%	
			}
		%>
		<h2><font color="red">Session_Id :  <%=session_id%></font></h2>
		<h2><font color="red">Session_Id 长度:  <%=session_id.length()%></font></h2>
	</body>
</html>