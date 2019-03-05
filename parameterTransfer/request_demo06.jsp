<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<html>
	<head>
		<title> 通过参数的名称获取参数的值</title>
	</head>
	<body>
		<%
			request.setCharacterEncoding("utf-8");
			Enumeration e = request.getParameterNames();
			
		%>
		<table border="1" width="50%" >
		<tr>
			<td><font color="red">参数名称</font></td>
			<td><font color="red">参数内容</font></td>
		</tr>
			<%
			while(e.hasMoreElements()){
				String name = "";
				String value = "";
				name = (String)e.nextElement();
				if(name.startsWith("**")){
					String[] values = request.getParameterValues(name);
					for(int i=0; i<values.length; i++){
						value += values[i]+"、";
					}
				}else{
					value = request.getParameter(name);
				}
			%>	
				<tr>
					<td><%=name%></td>		<!-- name变量的作用域跟java代码里是一样的 -->
					<td><%=value%></td>		<!-- value变量的作用域跟java代码里是一样的 -->		
				</tr>
			<%
			}
			%>
		</table>
	</body>
</html>