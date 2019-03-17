<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c" %>
<html>
	<head>
		<title>core标签的流程控制if表达式</title>
	</head>
	<body>
		<h2>core标签的流程控制if表达式</h2>
		<%
			pageContext.setAttribute("num",5);
		%>
		<c:if test="${param.ref=='xiaowei'}" var="result" scope="page" >
			<h3>if判断结果为: <%=pageContext.getAttribute("result")%></h3>
			<h3>if判断结果为: ${result}</h3>
			<h3>欢迎${param.ref} 光临</h3>
		</c:if>
		<c:choose>
			<!--一旦满足任何一个条件就会执行相应的语句，然后直接退出，不会再往下判断 -->
			<c:when test="${num <= 10}">
				<h3><font color="blue"> num属性的值小于10</font></h3>
			</c:when>
			<c:when test="${num>10 && num <= 20}">
				<h3><font color="blue">num属性的值大于10，小于20</font></h3>
			</c:when>
			<c:when test="${num>20 && num <= 30}">
				<h3><font color="blue">num属性的值大于20，小于30</font></h3>
			</c:when>
			<c:otherwise>
				<h3><font color="blue">没有一个条件满足!</font></h3>
			</c:otherwise>
		</c:choose>
	</body>
</html>