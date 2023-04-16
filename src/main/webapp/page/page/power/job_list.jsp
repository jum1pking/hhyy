<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>职务管理</title>
		<style type="text/css">
			body {
				background-image:url("${pageContext.request.contextPath}/page/images/indexbackground.jpg");
				background-repeat:no-repeat;
				background-position:100% 0;
				margin-left: 20px;
				margin-top: 20px;
			}

		</style>
		<link rel="stylesheet"
              href="${pageContext.request.contextPath}/page/css/table.css" type="text/css"/>
	</head>
	<body>
		<table width="100%">
			<tr>
				<td>
					<font color="black">您正在做的业务是：人力资源--权限管理--职务管理 </font>
				</td>
			</tr>
			<tr>
				<td class="nums">
				</td>
			</tr>
			<tr>
				<td align="right">
					<input type="button" value="添加职务" class="BUTTON_STYLE1" onclick="location.href='${pageContext.request.contextPath}/jobs/PJobAdd'">
				</td>
			</tr>
		</table>
		<table width="100%" border="1" cellpadding=5 cellspacing=1
				bordercolorlight=#848284 bordercolordark=#eeeeee
				class="TABLE_STYLE1">
			<tr class="TR_STYLE1">
				<td class="TD_STYLE1">
					职务编号
				</td>
				<td class="TD_STYLE1">
					职位分类名称
				</td>
				<td class="TD_STYLE1">
					职务名称
				</td>
				<td class="TD_STYLE1">
					职务说明
				</td>
				<td class="TD_STYLE1">
					操作
				</td>
			</tr>
		</table>
<%--		<p style="text-align:center;">--%>
<%--			--%>
<%--				<a href="right_list.html" style="color:black;">首页</a>--%>
<%--					<font color="red">1</font>--%>
<%--							<a href="right_list.html" style="color:black;">2</a> --%>
<%--					<a href="right_list.html" style="color:black;">下一页</a>--%>
<%--	     		<a href="right_list.html" style="color:black;">尾页</a> --%>
<%--	     	--%>
<%--		</p>--%>

	<script type="text/javascript" src="${pageContext.request.contextPath}/page/javascript/jquery-1.7.2.js"></script>
	<script>
		function doDelete(id) {
			if (confirm("确定删除此职务吗？")) {
				$.ajax({
					type: "get",
					url: "${pageContext.request.contextPath}/jobs/removeJob?id="+id,
					success:function (){
						location.herf='${pageContext.request.contextPath}/user/PUserList';
						window.location.reload();
					}
				})
			}
		}
		$.ajax({
			type:"get",
			url:"${pageContext.request.contextPath}/jobs/jobsList",
			success: function (data){
				let s='';
				for (let i=0;i<data.length;i++){
					s += '<tr class="TR_STYLE2">';
					s += '<td>'+data[i].mak_id+'</td>';
					s += '<td>'+data[i].major_kind_name+'</td>';
					s += '<td>'+data[i].major_name+'</td>';
					s += '<td>'+data[i].jexplain+'</td>';
					s += '<td>';
					s += '<a href="${pageContext.request.contextPath}/jobs/PjobLimit?id='+data[i].mak_id+'"><img src="${pageContext.request.contextPath}/page/images/bt_edit.gif" title="编辑" style="cursor:pointer;"/></a>';
					s += '<img src="${pageContext.request.contextPath}/page/images/bt_del.gif" title="删除" style="cursor:pointer;" onclick="doDelete('+data[i].mak_id+')"/>';
					s +='</td>';
					s += '</tr>';
				}
				$("table.TABLE_STYLE1").append(s);
				$("td.nums").append("当前职务总数："+data.length+"个");
			}
		})
	</script>
	</body>
	
</html>
