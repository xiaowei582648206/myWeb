<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<html>
	<head>
		<title>文件上传</title>
	</head>
	<body>
		<form action="servlet/UploadServlet" method="post" enctype="multipart/form-data">
        <div align="center">
            <fieldset style="width:80%">
                <legend>上传文件</legend><br/>
                    <div align="left">上传文件1</div>
                    <div align="left">
                        <input type="file" name="file1"/>
                    </div>
                    <div align="left">上传文件2</div>
                    <div align="left">
                        <input type="file" name="file2"/>
                    </div>
                    <div>
                        <div align='left'>上传文件说明1</div>
                        <div align='left'><input type="text" name="description1"/></div>
                    </div>
                    <div>
                        <div align='left'>上传文件说明2</div>
                        <div align='left'><input type="text" name="description2"/></div>
                    </div>
                    <div>
                        <div align='left'>
                            <input type='submit' value="上传文件"/>
                        </div>
                    </div>
            </fieldset>
        </div>
    </form>
	</body>
</html>