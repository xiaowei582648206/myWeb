<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<html>
	<head>
		<title>使用过滤器Filter进行用户登录验证</title>
	</head>
	<body>
		<form action="login.jsp" method="post">
			用户名：<input type="text" name="name"> <br>
			密码： <input type="password" name="password"> <br>
			<input type="submit" value="登陆">
			<input type="reset" value="重置">
		</form>
		
		<%
			request.setCharacterEncoding("utf-8");
			String name = request.getParameter("name");
			if(name!=null && !("".equals(name))){
				session.setAttribute("userid",name);          //添加session属性范围的Attribute，只要session中有userid这个属性，那么表明当前用户是登录过的，否则就是需要重新登录
				response.sendRedirect("loginSuccess.jsp");
			}
		%>
	</body>
</html>