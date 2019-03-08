<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<jsp:useBean id="reg" scope="request" class="com.hnu.cloudmining.Register"/>	<!-- 要想跳转后能还获得bean对象，则跳转前后bean对象的名字必须一致，否则就报错当前bean对象事先没有被introduce引入 -->
<!-- 这里只定义了Register对象，并没有setter()它的各个属性，所以其各个属性为空字符串 -->
<html>
	<head>
		<title>用户信息验证</title>
	</head>
	<body>
		<h3>使用javaBean来进行用户信息验证</h3>
		<form action="check.jsp" method="post">  <!-- action 属于客户端跳转，地址有变，当前request属性范围的bean对象跳转到check.jsp页面后失效 -->
			姓名：<input type="text" name="name" value="<jsp:getProperty name="reg" property="name"/>"> 
				  <font color="red"> <%=reg.getErrorMsg("errname")%>！</font><br>
			年龄：<input type="text" name="age" value="<jsp:getProperty name="reg" property="age"/>">
				  <font color="red"> <%=reg.getErrorMsg("errage")%>！ </font><br>
			邮箱：<input type="text" name="email" value="<jsp:getProperty name="reg" property="email"/>">
				  <font color="red"> <%=reg.getErrorMsg("erremail")%>！</font><br>
			<input type="submit" value="提交">
			<input type="reset" value="重置">
		</form>
	</body>
</html>