<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@ page import="java.io.*"%>
<html>
	<head>
		<title>利用java的流处理对象保存文件</title>
	</head>
	<body>
		<%
			request.setCharacterEncoding("utf-8");
			String filename = request.getParameter("filename");
			String content  = request.getParameter("content");
			String realpath = this.getServletContext().getRealPath("/");
			String filePath = realpath+"download"+File.separator+filename;
			File file = new File(filePath);
			if(!file.getParentFile().exists()){ // 先创建父目录
				file.getParentFile().mkdirs();
			}
			BufferedWriter writer = new BufferedWriter(new OutputStreamWriter( new FileOutputStream(file) , "GBK"));
			writer.write(content);
			writer.flush();
			writer.close();
		%>
		<h3><font color="red"><%=content%></font></h3>
		<%
			BufferedReader reader = new BufferedReader(new InputStreamReader(new FileInputStream(file),"GBK"));
			String result = "";
			String line = null;
			while( (line=reader.readLine())!=null){
				result += line +"\n";
			}
			reader.close();
		%>
		<h3><%=result%></h3>
		
		<h2><%=realpath%></h2>
	</body>
</html>