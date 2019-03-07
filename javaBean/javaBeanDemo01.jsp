<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@ page import="com.hnu.cloudmining.*"%> <!-- 直接导入我们创建好的SimpleBean类-->
<html>									  <!-- 将我们创建好的SimpleBean类放到/WEB-INF/classes/目录后，需要重启服务器-->
	<head>
		<title>javaBean的简单使用</title>
	</head>
	<body>
		<%
			SimpleBean user = new SimpleBean();
			user.setName("xiaowei");
			user.setAge(25);
			StudentBean stu = new StudentBean();
			stu.setName("肖伟");
			stu.setAge(22);
			stu.setSex("男");
			stu.setSchool("hnu");
		%>
		<h3>姓名：<%=user.getName()%></h3>
		<h3>年龄：<%=user.getAge()%></h3>
		<h3>姓名：<%=stu.getName()%></h3>
		<h3>年龄：<%=stu.getAge()%></h3>
		<h3>性别：<%=stu.getSex()%></h3>
		<h3>学校：<%=stu.getSchool()%></h3>
	</body>
</html>