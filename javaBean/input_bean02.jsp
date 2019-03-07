<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<html>
	<head>
		<title>使用新型方法&lt;jsp:setProperty&gt;标签批量设置属性，初始化对象</title>
	</head>
	<body>
		<%
			request.setCharacterEncoding("utf-8");
		%>
		<jsp:useBean id="stu" scope="page" class="com.hnu.cloudmining.StudentBean" />
		<!--只需要一个简单的jsp:setProperty标签就可以为对象批量,这样方式的原理其实利用也是java的反射机制，通过参数名找到对象相应的setter方法，它要求前台页面表单传递过来的参数名必须要与对象的属性名一致，否则不能完成自动初始化工作-->
		<jsp:setProperty name="stu" property="*"/>			<!-- name表示要为哪一个对象设置属性值， property表示要为哪些属性设置值，*表示自动匹配 -->
		<h2><font color="red">姓名: <%=stu.getName()%></font></h2> 
		<h2><font color="red">年龄: <%=stu.getAge()%></font></h2>
		<h2><font color="red">性别: <%=stu.getSex()%></font></h2>
		<h2><font color="red">学校: <%=stu.getSchool()%></font></h2>
	</body>
</html>