<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<html>
	<head>
		<title>用户登录验证页面<title>
	</head>
	<body>
		<%
			String dirver= "com.mysql.jdbc.Driver";
			String url = "jdbc:mysql://192.168.122.128:3306/cloudmining";
			String user = "root";
			String password = "123";
			Connection conn = null;
			ResultSet rs = null;
			PreparedStatement pstmt = null;
			Boolean flag = false;
			String login_name = request.getParameter("name");   //获取登录界面form表单提交过来的用户名和登录密码
			String login_password = request.getParameter("password");
		%>
		<%
			Class.forName(dirver);
			conn = DriverManager.getConnection(url,user,password);
			String sql = "select userid from user where name = ? and password = ?";
			String userid = null;
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,login_name);
			pstmt.setString(2,login_password);
			rs = pstmt.executeQuery();
			if(rs.next()){
				userid = rs.getString(1);
				flag = true;
			}
		%>
		<!-- java代码一定要和html代码分开，否则不能通过编译 -->
		<%
			if(flag){     
		%>
				<jsp:forward page="login_successful.jsp">
					<jsp:param name="userid" value="<%=userid%>"/>
					<jsp:param name="login_name" value="<%=login_name%>"/>
				</jsp:forward>
		<%
			}else{
		%>
				<jsp:forward  page="login_failed.jsp"></jsp:forward>
		<%
			}
		%>
	</body>
</html>