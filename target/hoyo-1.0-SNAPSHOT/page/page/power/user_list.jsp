<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
	<head>
		<title>用户管理</title>
		<link rel="stylesheet"
              href="${pageContext.request.contextPath}/page/css/table.css" type="text/css"/>
		<script type="text/javascript"
				src="${pageContext.request.contextPath}/page/javascript/jquery-1.7.2.js"></script>

		<style type="text/css">
		</style>
	</head>
	<body>
		<table width="100%">
			<tr>
				<td>
					<font color="black">您正在做的业务是：人力资源--权限管理--用户管理 </font>
				</td>
			</tr>
			<tr>
				<td class="nums" >
				</td>
			</tr>
			<tr>
				<td align="right">
					<input type="button" value="添加用户" class="BUTTON_STYLE1" onclick="location.href='${pageContext.request.contextPath}/user/PUserAdd'">
				</td>
			</tr>
		</table>
		<table width="100%" border="1" cellpadding=5 cellspacing=1
				bordercolorlight=#848284 bordercolordark=#eeeeee
				class="TABLE_STYLE1">
			<tr class="TR_STYLE1">
				<td class="TD_STYLE1">
					用户编号
				</td>
				<td class="TD_STYLE1">
					用户名称
				</td>
				<td class="TD_STYLE1">
					真实姓名
				</td>
				<td class="TD_STYLE1">
					用户密码
				</td>
				<td class="TD_STYLE1">
					用户身份
				</td>
				<td class="TD_STYLE1">
					操作
				</td>
			</tr>
		</table>

		<script type="text/javascript">
			function doDelete(id) {
				if (confirm("确定删除此用户吗？")) {
					$.ajax({
						type: "get",
						url: "${pageContext.request.contextPath}/user/removeUser?uid="+id,
						success:function (){
							location.herf='${pageContext.request.contextPath}/user/PUserList';
							window.location.reload();
						}
					})
				}
			}
			$.ajax({
				type:"get",
				url:"${pageContext.request.contextPath}/user/listUser",
				success: function(data){
					let s = '';
					for (let i = 0; i < data.length; i++) {
						let k=data[i].u_id;
						s += '<tr class="TR_STYLE2">';
						s += '<td>'+data[i].u_id+'</td>';
						s += '<td>'+data[i].u_name+'</td>';
						s += '<td>'+data[i].u_true_name+'</td>';
						s += '<td>'+data[i].u_password+'</td>';
						s += '<td>'+data[i].u_job+'</td>';
						s += '<td>';
						s += '<a href="${pageContext.request.contextPath}/user/PUseredit?uid='+data[i].u_id+'"><img src="${pageContext.request.contextPath}/page/images/bt_edit.gif" title="编辑" style="cursor:pointer;"/></a>';
						s += '<img src="${pageContext.request.contextPath}/page/images/bt_del.gif" title="删除" style="cursor:pointer;" onclick="doDelete('+data[i].u_id+')"/>';
						s +='</td>';
						s += '</tr>';
					}
					$("table.TABLE_STYLE1").append(s);
					$("td.nums").append("当前角色总数："+data.length+"个");
				}
			}
			)
		</script>
	</body>
</html>