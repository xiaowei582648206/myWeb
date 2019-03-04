<%@ page language="java"  contentType="text/html" pageEncoding="utf-8"%>
<html>
	<head>
		<title>动态导入</title>
	</head>
	<body>
		<h1>动态导入：使用&lt;jsp:include &gt; 标签指令包含三个不同的文件</h1>
		<jsp:include page="../staticInclude/info.html"></jsp:include>
		<jsp:include page="../staticInclude/info.jsp"></jsp:include>
		<jsp:include page="../staticInclude/info.inc"></jsp:include>
		<h1>动态导入：传递参数</h1>
		<jsp:include page="recieveParameter01.jsp">
			<jsp:param name="name" value="xiaowei"/>
			<jsp:param name="info" value="hello world"/>
		</jsp:include>
			<jsp:include page="recieveParameter02.jsp">
			<jsp:param name="name" value="dabao"/>
			<jsp:param name="info" value="weather is nice"/>
		</jsp:include>
	</body>
</html>