<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@ page import="com.hnu.cloudmining.*"%>
<jsp:useBean id="emp" scope="request" class="com.hnu.cloudmining.vo.Emp"/>
<jsp:useProperty name="emp" property="*"/>
<html>
	<head>
		<title>插入员工信息</title>
	</head>
	<body>
		<%
			IEmpDao dao = DaoFactory.getIEmpDaoInstance();
			boolean flag = dao.doCreate(emp);
			if(flag){
		%>
				<h2>插入成功！</h2>
				
		<%		
			}else{
		%>
				<h2>插入失败！</h2>
		<%
			}
		%>
	</body>
</html>