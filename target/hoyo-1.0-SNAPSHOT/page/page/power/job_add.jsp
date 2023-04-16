<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>添加职务</title>
		<link rel="stylesheet"
              href="   ${pageContext.request.contextPath}/page/css/table.css" type="text/css"/>
		<script type="text/javascript" src="${pageContext.request.contextPath}/page/javascript/jquery-1.7.2.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/page/javascript/right_add.js"></script>
	</head>
	<body>
	<div style="padding-left:20px;float:left; width: 89%;">
			<table width="90%" >
				<tr>
					<td>
						<font color="black">您正在做的业务是：人力资源--权限管理--添加职务</font>
					</td>
				</tr>

			</table>
			<table width="90%" border="1" cellpadding=3 cellspacing=1
				bordercolorlight=#848284 bordercolordark=#eeeeee
				class="TABLE_STYLE1">
				<tr>
					<td class="TD_STYLE1">职务名称</td>
					<td class="TD_STYLE2">
						<input type="text" id="roleName" name="sysRole.roleName"/>
					</td>
					<td class="TD_STYLE1">职务分类名称</td>
					<td class="TD_STYLE2">
						<input type="text" id="kindName" name="sysRole.roleName"/>
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">职务说明</td>
					<td class="TD_STYLE2">
						<textarea name="humanFile.humanHistroyRecords" id="explain" rows="4" class="TEXTAREA_STYLE1"></textarea>
					</td>
				</tr>
			</table>
	</div>
	<div style="float: right;width: 10%;height: 100%;"></div>
	<div align="center">
		<input type="submit" value="保存" class="BUTTON_STYLE1" onclick="save()"/>
		<input type="button" value="返回" class="BUTTON_STYLE1"
			   onclick="history.back()">
	</div>
	<div class="toast" id="toast1">
		操作成功
	</div>
	<div class="toast" id="toast2">
		操作失败,请联系管理员
	</div>
	<div class="toast" id="toast3">
		不能包含空项！
	</div>
	<script>
		function save() {
			var toast1 = document.getElementById("toast1");
			var toast2 = document.getElementById("toast2");
			var toast3 = document.getElementById("toast3");
			if ($("#roleName").val()===""||$("#kindName").val()===null||$("#kindName").val()===null||$("#explain").val()===null){
				toast3.style.display="block";
				setTimeout(function(){toast3.style.display="none";
				},1000);
			}else {
				$.ajax({
					type:"get",
					url:"${pageContext.request.contextPath}/jobs/addJob?jobName="+$("#roleName").val()+"&major_kind_name="+$("#kindName").val()+"&explain="+$("#explain").val(),

					success:function (){
						toast1.style.display="block";
						setTimeout(function(){toast1.style.display="none";
							location.href="${pageContext.request.contextPath}/jobs/PJobList";
						},1000);

					},
					error:function () {
						toast2.style.display="block";
						setTimeout(function(){toast2.style.display="none";

						},1000);
					}
				})
			}
		}
	</script>
	</body>
</html>
