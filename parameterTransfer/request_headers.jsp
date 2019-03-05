<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<html>
	<head>
		<title>获取request请求的全部头信息</title>
	</head>
	<body>
		<%
			
			Enumeration e = request.getHeaderNames();     //获取header信息的名称集合,在java代码中要使用"//"作为注释符号
			while(e.hasMoreElements()){
				String header_name =(String) e.nextElement();
				String content = request.getHeader(header_name);  //获取每个header名称对应的内容
		%>
				<h3><%=header_name%> --> <%=content%> </h3> 
		<%
			}
		%>
		
	</body>
</html>