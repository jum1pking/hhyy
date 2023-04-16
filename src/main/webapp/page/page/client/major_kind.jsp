<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet"
              href="${pageContext.request.contextPath}/page/css/table.css" type="text/css">
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/page/javascript/comm/comm.js">
		</script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/page/javascript/jquery-1.7.2.js"></script>
	</head>

	<body>
	<div style="padding-left:20px;float:left; width: 89%;">
		<table width="90%">
			<tr>
				<td>
					<font color="black">您正在做的业务是：人力资源--客户化设置--人力资源档案管理设置--部门分类设置
					</font>
				</td>
			</tr>
		</table>
		<table width="100%" border="1" cellpadding=0 cellspacing=1
			   bordercolorlight=#848284 bordercolordark=#eeeeee
			   class="TABLE_STYLE1" id="list">
			<tr>
				<td width="30%" class="TD_STYLE1">
					部门分类编号
				</td>
				<td width="30%" class="TD_STYLE1">
					部门分类名称
				</td>
				<td width="10%" class="TD_STYLE1">
					操作
				</td>
			</tr>
		</table>
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
	<div style="display: none"><textarea id="changeType"></textarea></div>
	<script>
		$.ajax({
			type:"get",
			url:"${pageContext.request.contextPath}/client/majorKindList",
			success: function (data){
				let s='';
				s += '<tr class="TR_STYLE2">';
				s += '<td><input type="text" class="INPUT_STYLE1" value="" placeholder="在此添加" id="addId"/></td>';
				s += '<td><input type="text" class="INPUT_STYLE1" value="" placeholder="在此添加" id="addName"/></td>';
				s += '<td>';
				s += '<img src="${pageContext.request.contextPath}/page/images/bt_edit.gif" title="编辑" onclick="add()" style="cursor:pointer;"/>';
				s +='</td>';
				s += '</tr>';
				for (let i=0;i<data.length;i++){
					s += '<tr class="TR_STYLE2">';
					s += '<td><input type="text" class="INPUT_STYLE1" id="id1'+data[i].mak_id+'" value="'+data[i].major_kind_id+'"/></td>';
					s += '<td><input type="text" class="INPUT_STYLE1" id="name1'+data[i].mak_id+'" value="'+data[i].major_kind_name+'"/></td>';
					s += '<td>';
					s += '<img src="${pageContext.request.contextPath}/page/images/bt_edit.gif" title="编辑" style="cursor:pointer;" onclick="change('+data[i].mak_id+')"/></a>';
					s += '<img src="${pageContext.request.contextPath}/page/images/bt_del.gif" title="删除" style="cursor:pointer;" onclick="doDelete('+data[i].mak_id+')"/>';
					s +='</td>';
					s += '</tr>';
				}
				$("#list").append(s);
			}
		})

		function add() {
			var toast1 = document.getElementById("toast1");
			var toast2 = document.getElementById("toast2");
			var toast3 = document.getElementById("toast3");
			if ($("#addId").val()===""||$("#addName").val()===""){
				toast3.style.display="block";
				setTimeout(function(){toast3.style.display="none";
				},1000);
			}else{
				$.ajax({
					type:"get",
					url:"${pageContext.request.contextPath}/client/majorKindAdd?major_kind_id="+$("#addId").val()+"&major_kind_name="+$("#addName").val(),
					success:function (){
						toast1.style.display="block";
						setTimeout(function(){toast1.style.display="none";
							window.location.reload();
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

		function change(mak_id) {
			var toast1 = document.getElementById("toast1");
			var toast2 = document.getElementById("toast2");
			var id1 = document.getElementById("id1"+mak_id);
			var name1 = document.getElementById("name1"+mak_id);
			$("#changeType").add(name1.value)
				$.ajax({
					type:"get",
					url:"${pageContext.request.contextPath}/client/majorKindChange?mak_id="+mak_id+"&major_kind_id="+id1.value+"&major_kind_name="+name1.value,
					success:function (){
						toast1.style.display="block";
						setTimeout(function(){toast1.style.display="none";
						},1000);

					},
					error:function () {
						toast2.style.display="block";
						setTimeout(function(){toast2.style.display="none";
						},1000);
					}
				})
		}
		function doDelete(id) {
			if (confirm("确定删除此部门吗？")) {
				$.ajax({
					type: "get",
					url: "${pageContext.request.contextPath}/client/removeMajorKind?mak_id="+id,
					success:function (){
						window.location.reload();
					}
				})
			}
		}
	</script>
	</body>
</html>

