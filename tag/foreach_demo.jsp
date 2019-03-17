<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c"%>
<%@ page import="java.util.*"%>
<html>
	<head>
		<title>使用c：forEach标签变量集合中所有元素</title>
	</head>
	<body>
		<h2>使用c：forEach标签变量集合中所有元素</h2>
		<%
			List<String> list = new ArrayList();
			list.add("hello");
			list.add("world");
			list.add("i");
			list.add("like");
			list.add("you");
			request.setAttribute("myList",list);
			
			Map<String,String> map = new HashMap<String,String>();
			map.put("name","xiaowei");
			map.put("age","23");
			map.put("Sex","male");
			map.put("address","hnu");
			request.setAttribute("myMap",map);
		%>
		<h2>List集合中所有元素如下:</h2>
		<c:forEach var="mem" items="${myList}" step="1">
			<h3>${mem}</h3>
		</c:forEach>
		<h2>List集合中所有元素如下:</h2>
		<c:forEach var="entry" items="${myMap}">
			<h3>${entry.key} : ${entry.value}</h3>
		</c:forEach>
	</body>
	</body>
</html>