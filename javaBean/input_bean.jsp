<%@ page language="java" contentType="text/html"  pageEncoding="utf-8"%>
<%@ page  import="com.hnu.cloudmining.*"%>
<html>
	<head>
		<title>用传统方法接受前台传递过来的参数初始化对象</title>
	</head>
	<body>
		<%
			request.setCharacterEncoding("utf-8");
			String name = request.getParameter("name");
			int age =  Integer.parseInt(request.getParameter("age"));
			String sex = request.getParameter("sex");
			String school = request.getParameter("school");
			StudentBean stu = new StudentBean();   // 传统方式的缺点在如果属性太多，要一个一个接收再调用setter，太麻烦了
			stu.setName(name);
			stu.setAge(age);
			stu.setSex(sex);
			stu.setSchool(school);
		%>
		<h2>姓名: <%=stu.getName()%></h2>
		<h2>年龄: <%=stu.getAge()%></h2>
		<h2>性别: <%=stu.getSex()%></h2>
		<h2>学校: <%=stu.getSchool()%></h2>
	</body>
<html>