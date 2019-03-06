<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<html>
	<head>
		<title>登录成功</title>
	</head>
	<body>
		<%
			String session_id = session.getId();
			String user =(String) session.getAttribute("userid");  // session对象在整个会话阶段都有效，只要浏览器没有关闭，session就不会消失，就随时可以从里面取出userid的值，相反，若是关闭浏览器后(相当于与服务器重新建立一个会话session)直接输入welcome.jsp的地址，就会出现未登录的状态，因为此时session消失了，除非你设置了持久化策略
			if(user !=null ){
		%>
				<h2><font color="blue">登录成功，欢迎<%=user%>光临</font></h2>
				<h3><font color="blue">session_id :<%=session_id%></font></h3>
				<h2><font color="red">注销登录，请点<a href="logout.jsp">这里</a></font></h2>
		<%
			}else{
		%>		
				<h2>很抱歉，您没有登录过，请先<a href="login.jsp">登录</a>!</h2>
		<%
			}
		%>
	</body>
</html>