<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@ page import="com.hnu.cloudmining.dao.*"%>
<%@ page import="com.hnu.cloudmining.factory.*"%>
<%@ page import="com.hnu.cloudmining.vo.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>

<html>
	<head>
		<title>插入员工信息</title>
	</head>
	<body>
		<%
			
			request.setCharacterEncoding("utf-8");
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Emp emp = new Emp();
			emp.setEmpno(Integer.parseInt(request.getParameter("empno")));
			emp.setEname(request.getParameter("ename"));
			emp.setJob(request.getParameter("job"));
			emp.setHiredate(sdf.parse(request.getParameter("hiredate")));
			emp.setSal(Float.parseFloat(request.getParameter("sal")));
			IEmpDao dao = DaoFactory.getIEmpDaoInstance();
			boolean flag = dao.doCreate(emp);
			if(flag){
		%>
				<h2>记录插入成功！</h2>
				
		<%		
			}else{
		%>
				<h2>记录插入失败！</h2>
		<%
			}
		%>
	</body>
</html>