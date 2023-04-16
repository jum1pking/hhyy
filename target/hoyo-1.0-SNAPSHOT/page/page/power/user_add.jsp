<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>添加用户</title>
		<link rel="stylesheet"
              href="${pageContext.request.contextPath}/page/css/table.css" type="text/css"/>
		<script type="text/javascript" src="${pageContext.request.contextPath}/page/javascript/jquery-1.7.2.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/page/javascript/user_add.js"></script>
	</head>
	<body>
			<table width="100%">
				<tr>
					<td>
						<font color="black">您正在做的业务是：人力资源--权限管理--添加用户</font>
					</td>
				</tr>
				<tr>
					<td align="right">
						<input type="submit" value="保存" class="BUTTON_STYLE1" onclick="save()"/>
						<input type="button" value="返回" class="BUTTON_STYLE1"
							onclick="history.back()">
					</td>
				</tr>
			</table>
			<table width="100%" border="1" cellpadding=3 cellspacing=1
				bordercolorlight=#848284 bordercolordark=#eeeeee
				class="TABLE_STYLE1">
				<tr>
					<td class="TD_STYLE1">用户名称</td>
					<td class="TD_STYLE2">
						<input type="text" id="userName" name="users.userName" />
					</td>
					<td class="TD_STYLE1">用户密码</td>
					<td class="TD_STYLE2">
						<input type="text" id="userPassword" name="users.userPassword"/>
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">真实姓名</td>
					<td class="TD_STYLE2">
						<input type="text" id="userTrueName" name="users.userTrueName"/>
					</td>
					<td class="TD_STYLE1">用户身份</td>
					<td class="TD_STYLE2">
						<select class="op" name="users.sysRole.roleId">
						</select>
					</td>
				</tr>
			</table>
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
		$.ajax({
			type: "get",
			url: "${pageContext.request.contextPath}/jobs/getJobsName",
			success:function (data){
				let s='';
				s += '<option value="">请选择职务</option>';
				for (let i=0;i<data.length;i++){
					s += '<option value="'+data[i]+'">'+data[i]+'</option>';
				}
				$("select.op").append(s);
			}

		})

		function save() {
			var toast1 = document.getElementById("toast1");
			var toast2 = document.getElementById("toast2");
			var toast3 = document.getElementById("toast3");
			if ($("#userName").val()===""||$("#userPassword").val()===""||$("#userTrueName").val()===""||$('.op option:selected').val()===""){
				toast3.style.display="block";
				setTimeout(function(){toast3.style.display="none";
				},1000);
			}else {
				$.ajax({
					type:"get",
					url:"${pageContext.request.contextPath}/user/addUser?userName="+$("#userName").val()+"&userPassword="+$("#userPassword").val()+"&userTruename="+$("#userTrueName").val()+"&job="+$('.op option:selected').val(),

					success:function (){
						toast1.style.display="block";
						setTimeout(function(){toast1.style.display="none";
							location.href="${pageContext.request.contextPath}/user/PUserList";
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
