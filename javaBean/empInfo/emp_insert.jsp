<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@ page import="com.hnu.cloudmining.*"%>
<html>
	<head>
		<title>增加雇员信息</title>
	</head>
	<body>
		<form action="emp_insert_do.jsp" method="post"><br>
			编号：<input type="text" name="empno"><br>
			姓名：<input type="text" name="ename"><br>
			部门：<input type="text" name="job"><br>
			入职日期：<input type="text" name="hiredate"><br>
			工资：<input type="text" name="sal">
			<input type="submit" value="注册">
			<input type="reset" value="重置">
		</form>
	</body>
</html>