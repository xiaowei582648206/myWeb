<%@page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@page import="com.jspsmart.upload.*"%>
<html>
	<head>
		<title>创建smartupload对象来保存前台上传的文件</title>
	</head>
	<body>
		<h2>创建smartupload对象来保存前台上传的文件</h2>
		<%
			request.setCharacterEncoding("utf-8");
		%>
		<%
			
			SmartUpload smart = new SmartUpload();  
			smart.initialize(pageContext);	 	//初始化上传操作
			smart.upload();						//上传准备
			smart.save("upload");				//将上传文件保存到当前web应用的根目录下的upload文件夹中，upload目录必须事先创建好
			String name = smart.getRequest().getParameter("name");
		%>
		
		<h2>恭喜<%=name%>，上传成功！</h2>
	</body>
</html>