<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@ page import="com.hnu.cloudmining.dao.*"%>
<%@ page import="com.hnu.cloudmining.factory.*"%>
<%@ page import="com.hnu.cloudmining.vo.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<html>
	<head>
		<title>员工信息模糊查询</title>
	</head>
	<body>
		<center>
		<form action="emp_search.jsp" method="post">
			请输入关键字：<input type="text" name="keyword" value="">
			<input type="submit" value="查询">
			<input type="reset" value="重置">
		</form>
		</center>
		<%
			request.setCharacterEncoding("utf-8");
			String keyword = request.getParameter("keyword");
			if(keyword == null ) keyword = "";
			IEmpDao dao = DaoFactory.getIEmpDaoInstance();
			List<Emp> emps = dao.findAll(keyword);
		%>
		<center>
			<table border="1">
				<tr>
					<td>员工编号</td>
					<td>员工姓名</td>
					<td>员工部门</td>
					<td>入职日期</td>
					<td>员工工资</td>
				</tr>
				<%
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				for(int i = 0;i<emps.size();i++){
					Emp emp = emps.get(i);
					int empno = emp.getEmpno();
					String ename = emp.getEname();
					String job = emp.getJob();
					String hiredate = sdf.format( emp.getHiredate());
					float sal =  emp.getSal();
				%>
					<tr>
						<td><%=empno%></td>
						<td><%=ename%></td>
						<td><%=job%></td>
						<td><%=hiredate%></td>
						<td><%=sal%></td>
					</tr>	
				<%
				}
				%>
			</table>
		</center>
	</body>
</html>