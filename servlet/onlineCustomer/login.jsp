<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<html>
	<head>
		<title>使用监听器来进行在线访客显示</title>
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
			String password = request.getParameter("password");
			if(name!=null && !("".equals(name))){
				session.setAttribute("name",name);  //添加session属性范围的Attribute，只要有任何添加session属性的操作都会触发监听器listener的attributeAddedf()方法
				response.sendRedirect("list.jsp");	//客户端跳转到显示页面
			}
		%>
	</body>
</html>