<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<html>
	<head>
		<title> 展示雇员表 </title>
	</head>
	<body>
	<center>
		<h1>雇员表</h1>
	</center>
		<%! 
			//定义全局变量， 一定要记录使用特有的格式才能定义全局变量
			public static final String  dirver="com.mysql.jdbc.Driver";   
			public static final String  url = "jdbc:mysql://192.168.122.128:3306/cloudmining";
			public static final String  user = "root";
			public static final String  password= "123";
		%>
		<%
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
		%>
				
		<%
		    try{
				Class.forName(dirver);//数据库驱动类加载
				conn = DriverManager.getConnection(url,user,password);
				String sql = "select * from emp";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
		%>
		<center>
			<table border="1" width="80%" >
			<tr>
				<td>雇员编号</td>
				<td>雇员姓名</td>
				<td>部门</td>
				<td>入职日期</td>
				<td>工资</td>
			</tr>
		
		<%
			while(rs.next()){
				int empno = rs.getInt(1);
				String ename = rs.getString(2);
				String job = rs.getString(3);
				java.util.Date date = rs.getDate(4);
				float sal = rs.getFloat(5);
		%>
		<tr>
			<td><%=empno%></td>
			<td><%=ename%></td>
			<td><%=job%></td>
			<td><%=date%></td>
			<td><%=sal%></td>
		</tr>
		<%
			}
		%>
			</table>
		</center>
		<%
			}catch(Exception e){
				System.out.println(e);
			}finally{
				rs.close();
				pstmt.close();
				conn.close();
			}
		%>

	</body>

</html>