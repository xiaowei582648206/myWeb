<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<html>
	<head>
		<title>静态导入</title>
	</head>
	<body>
		<h1>静态导入：使用include导入三个不同后缀的文件内容</h1>
		<%@ include file="info.html"%>
		<%@ include file="info.jsp"%>
		<%@ include file="info.inc"%>
	</body>
</html>