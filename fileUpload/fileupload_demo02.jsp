<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%@ page import="org.apache.commons.fileupload.disk.*"%>
<%@ page import="org.apache.commons.fileupload.servlet.*"%>
<%@ page import="org.apache.commons.fileupload.*"%>

<html>
	<head>
		<title>
			使用fileupload组件接收前台上传的文件，并保存到服务器上/uploadTemp目录下
		</title>
	</head>
	<body>
		<h2>使用fileupload组件接收前台上传的文件，并保存到服务器/uploadTemp目录下</h2>
		<%
			request.setCharacterEncoding("GBK");
			DiskFileItemFactory factory = new DiskFileItemFactory();		//创建磁盘工厂对象
			String uploadTempDir = this.getServletContext().getRealPath("/")+"uploadTemp";
			factory.setRepository(new File(uploadTempDir)); 							//设置临时文件夹
			ServletFileUpload upload = new ServletFileUpload(factory);		//创建处理工具
			upload.setFileSizeMax(3*1024*1024);								//设置最大文件上传大小3M
			List<FileItem> items = upload.parseRequest(request);			//接收前台页面的所有表单的所有控件名称和内容
			for(int i = 0;i<items.size();i++){
				FileItem item = items.get(i);								//每一个FileItem对象都代表一个控件
				String fieldName = item.getFieldName();
		%>
				<ul><h3>表单控件名称：<%=fieldName%>  是否为普通文本: <%=item.isFormField()%></h3>
		<%
			if(!item.isFormField()){ 					//如果不是普通文本数据，而是上传的文件
					String name = item.getName(); 		//文件名称
					String type =item.getContentType(); //文件类型
					long size = item.getSize();  		//文件大小
					InputStream in = item.getInputStream();
					String outPath = uploadTempDir+File.separator+name;
					FileOutputStream outer = new FileOutputStream(new File(outPath));
					byte[] data = new byte[1024];
					int len = 0;
					while((len = in.read(data))!=-1){
						outer.write(data,0,len);
					}
					in.close();
					outer.close();
					
		%>	
				    <li>上传文件名：<%=name%>
					<li>上传文件类型：<%=type%>
					<li>上传文件大小：<%=size%>
					<h2><font color="red">文件上传成功!</font></h2>
		<%
				}else{
					String value = item.getString();
		%>
					<li>普通控件的内容： <%=value%>
		<%
				}	
			}
		%>
	</body>
<html>