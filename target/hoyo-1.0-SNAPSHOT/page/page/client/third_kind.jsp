<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/page/css/table.css"
			type="text/css">
		<script type="text/javascript"
				src="${pageContext.request.contextPath}/page/javascript/jquery-1.7.2.js"></script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/page/javascript/comm/comm.js">
		</script>
		
		<script type="text/javascript" src="${pageContext.request.contextPath}/page/javascript/jquery-1.7.2.js"></script>
	<body>
			<table width="100%">
				<tr>
					<td>
						<font color="black">您正在做的业务是：人力资源--客户化设置--人力资源档案管理设置--III级机构设置
						</font>
					</td>
				</tr>
				<tr>
					<td align="right">
						<input type="button" value="添加" class="BUTTON_STYLE1"
							onclick="window.location.href='${pageContext.request.contextPath}/PClient/PThirdKindRegister'" />
					</td>
				</tr>
			</table>
			<table width="100%" border="1" cellpadding=0 cellspacing=1
				bordercolorlight=#848284 bordercolordark=#eeeeee
				class="TABLE_STYLE1">
				<tr>
					<td width="14%" class="TD_STYLE1">
						I级机构名称
					</td>
					<td width="14%" class="TD_STYLE1">
						II级机构名称
					</td>
					<td width="14%" class="TD_STYLE1">
						II级机构编号
					</td>
					<td width="14%" class="TD_STYLE1">
						III级机构名称
					</td>
					<td width="17%" class="TD_STYLE1">
						销售责任人编号
					</td>
					<td width="17%" class="TD_STYLE1">
						是否为零售店
					</td>
					<td width="5%" class="TD_STYLE1">
						操作
					</td>
				</tr>
			</table>
		<script type="text/javascript">
			$.ajax({
				type:"get",
				url:"${pageContext.request.contextPath}/client/thirdKindList",
				success: function (data){
					let s='';
					for (let i=0;i<data.length;i++){
						s += '<tr class="TR_STYLE2">';
						s += '<td>'+data[i].first_kind_name+'</td>';
						s += '<td>'+data[i].second_kind_name+'</td>';
						s += '<td>'+data[i].third_kind_id+'</td>';
						s += '<td>'+data[i].third_kind_name+'</td>';
						s += '<td>'+data[i].third_kind_sale_id+'</td>';
						s += '<td>'+data[i].third_kind_is_retail+'</td>';
						s += '<td>';
						s += '<a href="${pageContext.request.contextPath}/PClient/PThirdKindChange?ftk_id='+data[i].ftk_id+'"><img src="${pageContext.request.contextPath}/page/images/bt_edit.gif" title="编辑" style="cursor:pointer;"/></a>';
						s += '<img src="${pageContext.request.contextPath}/page/images/bt_del.gif" title="删除" style="cursor:pointer;" onclick="doDelete('+data[i].ftk_id+')"/>';
						s +='</td>';
						s += '</tr>';
					}
					$("table.TABLE_STYLE1").append(s);
				}
			})
			function doDelete(id) {
				if (confirm("确定删除此机构吗？")) {
					$.ajax({
						type: "get",
						url: "${pageContext.request.contextPath}/client/removeThirdKind?ftk_id="+id,
						success:function (){
							location.herf='${pageContext.request.contextPath}/index/PThirdKind';
							window.location.reload();
						}
					})
				}
			}
		</script>
	</body>
</html>

