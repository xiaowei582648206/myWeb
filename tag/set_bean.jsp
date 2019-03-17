<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="/WEB-INF/c.tld" %>
<%@ page import="com.hnu.cloudmining.*"%>
<html>
	<head>
		<title>使用core标签为javaBean的具体属性设置值</title>
	</head>
	<body>
		<%
			SimpleBean bean = new SimpleBean();
			request.setAttribute("b",bean);
		%>
		<h2>使用core标签为javaBean对象的具体属性设置值</h2>
		<c:set value="xiaowei" target="${b}" property="name"/>  <!-- 通过EL表达式取出存放在request范围的名称为b的属性值 -->
		<c:set value="23" target="${b}" property="age"/>  <!-- 可以将String类型自动转换成int类型 -->
		<h3>属性内容：${requestScope.b.name}</h3>
		<h3>属性内容：${requestScope.b.age}</h3>
	</body>
</html>