<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<html>
	<head>
		<title>接收参数</title>
	</head>
	<body>
		<%
			request.setCharacterEncoding("utf-8");
			String name = request.getParameter("name");
			String[]  interests = request.getParameterValues("interest"); // 使用getParameterValues()获取复选框中的一组参数
			String id = request.getParameter("id");  //获取隐藏区的参数，类似于文本框
		%>
		<h2>姓名： <%=name%></h2>
		<h2>编号： <%=id%></h2>
		<h2>兴趣： 
		<%
			if(interests!=null){
				for(int i = 0;i< interests.length ;i++){
		%>
					<%=interests[i]%>、
		<%
				}
			}
		%>
		</h2>
	</body>
</html>