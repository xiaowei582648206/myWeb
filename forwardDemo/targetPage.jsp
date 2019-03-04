<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<h1>
	<font color="red">这是跳转之后的页面</font>
</h1>
<h2>参数一：<%= request.getParameter("name")%></h2>
<h2>参数二：<%= request.getParameter("info")%></h2>