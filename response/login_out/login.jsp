<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<html>
	<head>
		<title>利用session内置对象实现用户自动登录与注销</title>
	</head>
	<body>
		<form action="login.jsp" method="post">
			用户名：<input type="text" name="username"> 
			密  码：<input type="password" name="password">  
			<input type="submit" value="提交">
			<input type="reset" value="重置">
		</form>
		<%
			String name = request.getParameter("username");
			String password = request.getParameter("password");
			if( !(name==null || "".equals(name) || password==null || "".equals(password) )){
				if(name.equals("xiaowei") && password.equals("123")){
					response.setHeader("refresh","3;URL=welcome.jsp"); //  告诉浏览器2s后，跳转到welocme.jsp页面
					session.setAttribute("userid",name);
		%>
				<h2>用户登录成功，3秒后自动调转到欢迎页面</h2>
				<h3>如果没有跳转，请按<a href="welcome.jsp">这里</a></h3>
		<%
				}else{
		%>
				<h2>登录失败，请重新<a href="login.jsp">登录</a></h2>
		<%
			    }
			}
		%>
	</body>
</html>