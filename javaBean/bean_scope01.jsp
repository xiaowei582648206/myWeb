<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<jsp:useBean id="mycounter" scope="request" class="com.hnu.cloudmining.myCounter" />
<!-- request范围； 只要是服务器跳转，当前bean都有效，不会创建新的bean对象，不管跳转几次页面-->
<html>						
	<head>
		<title>定义&lt;jsp:useBean&gt;的有效范围</title>
	</head>
	
	<body>
		<%
			int count = mycounter.getSize();
		%>
		<h2>第<%=count%>次访问！</h2>
		<h2>bean_scope01.jsp</h2>
		<jsp:forward page="bean_scope02.jsp"/>     <!-- 不管服务跳转几次，都只有一个mycounter对象 -->
	</body>
</html>