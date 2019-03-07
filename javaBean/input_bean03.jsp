<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<html>
	<head>
		<title>几种不同的方法&lt;jsp:setProperty&gt;标签批量设置属性，初始化对象</title>
	</head>
	<body>
		<%
			request.setCharacterEncoding("utf-8");
			int age = 22;
			String sex = "男";
		%>

		<h1>=============== 第一个对象:通过设置属性名和参数名的映射关系赋值 </h1>
		<jsp:useBean id="stu" scope="page" class="com.hnu.cloudmining.StudentBean" />
		<jsp:setProperty name= "stu" property="name" param="myname"/>
		<jsp:setProperty name= "stu" property="age" param="myage"/>
		<jsp:setProperty name= "stu" property="sex" param="mysex"/>
		<jsp:setProperty name= "stu" property="school" param="myschool"/>		
		<h2><font color="red">姓名: <%=stu.getName()%></font></h2> 
		<h2><font color="red">年龄: <%=stu.getAge()%></font></h2>
		<h2><font color="red">性别: <%=stu.getSex()%></font></h2>
		<h2><font color="red">学校: <%=stu.getSchool()%></font></h2>
		
		<h1>=============== 第二个对象:只指定属性名，自动匹配</h1>
		<jsp:useBean id="stu1" scope="page" class="com.hnu.cloudmining.StudentBean" />
		<jsp:setProperty name= "stu1" property="name" />		<!-- 自动从request参数中匹配与属性名一致的参数，匹配不到则值为null -->
		<jsp:setProperty name= "stu1" property="age" />
		<jsp:setProperty name= "stu1" property="sex" />
		<jsp:setProperty name= "stu1" property="school"/>		
		<h2><font color="red">姓名: <%=stu1.getName()%></font></h2> 
		<h2><font color="red">年龄: <%=stu1.getAge()%></font></h2>
		<h2><font color="red">性别: <%=stu1.getSex()%></font></h2>
		<h2><font color="red">学校: <%=stu1.getSchool()%></font></h2>
		
		<h1>=============== 第三个对象:直接赋值，手动为各属性设置具体值</h1>
		<jsp:useBean id="stu2" scope="page" class="com.hnu.cloudmining.StudentBean" />
		<jsp:setProperty name="stu2" property="name" value="肖大宝"/> 
		<jsp:setProperty name="stu2" property="age" value="<%=age%>"/> 
		<jsp:setProperty name="stu2" property="sex" value="<%=sex%>"/> 
		<jsp:setProperty name="stu2" property="school" value="三峡大学"/> 
		<h2><font color="red">姓名: <%=stu2.getName()%></font></h2> 
		<h2><font color="red">年龄: <%=stu2.getAge()%></font></h2>
		<h2><font color="red">性别: <%=stu2.getSex()%></font></h2>
		<h2><font color="red">学校: <%=stu2.getSchool()%></font></h2>
		
		<h1>=============== 利用&lt;jsp:getProperty&gt;标签输出某个对象的属性值</h1>
		<h2>姓名： <jsp:getProperty name="stu2" property="name"/></h2>
		<h2>年龄： <jsp:getProperty name="stu2" property="age"/></h2>
		<h2>性别： <jsp:getProperty name="stu2" property="sex"/></h2>
		<h2>学校： <jsp:getProperty name="stu2" property="school"/></h2>
	</body>
</html>