<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>
<%@ page isErrorPage="true" %>    <!-- isErrorPage="true"表示此页面可以在tomcat服务在解析jsp页面，转换为class文件时出现错误，跳转到此页面 -->
<% response.setStatus(200); %>    <!-- java代码一定要以分号结尾 -->
<h1>程序出现了问题</h1>   <!-- 设置200http状态码，表示本页面没有错误，可以正确显示 -->