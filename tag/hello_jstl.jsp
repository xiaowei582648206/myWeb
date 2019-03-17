<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="/WEB-INF/c.tld"%>
<html>
	<head>
		<title>第一次使用JSTL:Jsp标准标签库</title>
	</head>
	<body>
		<%
			pageContext.setAttribute("info","<www.baidu.com>");
		%>
		<h2>第一次使用JSTL:Jsp标准标签库</h2>
		<h3><c:out value="Hello World !!!" default="hello, xiaowei"/></h3>
		<h3><c:out value="${info}"/></h3>
	</body>
</html>