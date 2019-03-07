<%@ page  language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<html>
	<head>
		<title>获取application范围内的所有属性</title>
	</head>
	<body>
		<%
			Enumeration e = this.getServletContext().getAttributeNames();
			while(e.hasMoreElements()){
				String name = (String)e.nextElement(); //类型转化
				Object value = this.getServletContext().getAttribute(name); //用object对象来接收所有属性值
		%>
				<h2> name : <%=name%>  value:<%=value%> </h2>
		<%
			}
		%>
	</body>
</html>