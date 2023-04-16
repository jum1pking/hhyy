<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<title>欢迎</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<script src="${pageContext.request.contextPath}/page/javascript/jquery-1.7.2.js"></script>
		<script src="${pageContext.request.contextPath}/page/javascript/jquery.messager.js"></script>
		<link rel="stylesheet"
              href="${pageContext.request.contextPath}/page/css/table.css" type="text/css">
		<style type="text/css">
		body {
			margin: 0;
			background-color: white;
			background-image: none;
			font-family: 微软雅黑;
			padding: 0 0 0 10px;
			FONT-SIZE: 10pt;
			margin: 0px;
		}

		</style>
		<script>
		</script>
	</head>
	<body topmargin="0" leftmargin="0">
		<table style="width:100%;padding-bottom: 20px;">
			<tr>
				<td style="padding-left:50px">
					<p
						style="font-size: 40px; margin: 0; color: #0000CC; ">
						人力资源管理系统
					</p>
				</td>
				<td style="text-align: right;font-size:17px;color: #0000CC;float: right">
					欢迎您，用户：${truename}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="button" value="退出系统" class="BUTTON_STYLE1" onclick="parent.location.href='${pageContext.request.contextPath}/index/PLogin'"/>&nbsp;&nbsp;&nbsp;&nbsp;
				</td>
			</tr>
		</table>
	</body>
</html>