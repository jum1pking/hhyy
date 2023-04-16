<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet"
              href="${pageContext.request.contextPath}/page/css/table.css" type="text/css">
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/page/javascript/comm/comm.js">
		</script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/page/javascript/jquery-1.7.2.js"></script>
		<style>
			.TABLE_STYLE {
				border: 3px solid rgba(195 190 190 / 50%);
				margin-left: 15%;
			}
		</style>
</head>

<body>
	<div style="padding-bottom: 30px; margin-bottom: 40px;">
		您正在做的业务是：人力资源--客户化设置--薪酬管理设置
	</div>

	<div style="margin-left:50px;float: left;width: 40%">
		<table width="50%" border="1" cellpadding=0 cellspacing=1
			bordercolorlight=#848284 bordercolordark=#eeeeee
			class="TABLE_STYLE" id="listManage">
			<tr height="20">
				<td width="80%" class="TD_STYLE1" align="center">
					<b>薪酬项目名称</b>
				</td>
				<td width="15%" class="TD_STYLE1" align="center">
					删除
				</td>
			</tr>
		</table>
	</div>
	<div style="margin-left:50px;float: left;width: 40%">
		<table width="50%" border="1" cellpadding=0 cellspacing=1
			   bordercolorlight=#848284 bordercolordark=#eeeeee
			   class="TABLE_STYLE" id="listMethod">
			<tr height="20">
				<td width="80%" class="TD_STYLE1" align="center">
					<b>薪酬发放方式</b>
				</td>
				<td width="15%" class="TD_STYLE1" align="center">
					删除
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
	<script>
		$.ajax({
			type:"get",
			url:"${pageContext.request.contextPath}/client/listSalary",
			success: function (data){
				let s='';
				s += '<tr class="TR_STYLE2" style="background-color: rgba(251, 136, 238, 0.53);">';
				s += '<td><input type="text" class="INPUT_STYLE1" value="" placeholder="在此添加" id="addManage" style="width: 160px"/></td>';
				s += '<td >';
				s += '<img src="${pageContext.request.contextPath}/page/images/bt_edit.gif" title="编辑" onclick="addManage()" style="cursor:pointer;"/>';
				s +='</td>';
				s += '</tr>';
				let i=0;
				while (!(data[i]==="114514")){
					s += '<tr class="TR_STYLE2">';
					s += '<td><input type="text" class="INPUT_STYLE1" style="width: 160px" id="manage'+i+'" value="'+data[i]+'"/></td>';
					s += '<td>';
					s += '<img src="${pageContext.request.contextPath}/page/images/bt_edit.gif" title="编辑" style="cursor:pointer;" onclick="changeManage(`'+data[i]+'`,'+i+')"/></a>';
					s += '<img src="${pageContext.request.contextPath}/page/images/bt_del.gif" title="删除" style="cursor:pointer;" onclick="deleteManage('+i+')"/>';
					s +='</td>';
					s += '</tr>';
					i++;
				}
				i++;
				let j='';
				j += '<tr class="TR_STYLE2" style="background-color: rgba(251, 136, 238, 0.53);">';
				j += '<td><input type="text" class="INPUT_STYLE1" value="" placeholder="在此添加" id="addMethod" style="width: 160px"/></td>';
				j += '<td >';
				j += '<img src="${pageContext.request.contextPath}/page/images/bt_edit.gif" title="编辑" onclick="addMethod()" style="cursor:pointer;"/>';
				j +='</td>';
				j += '</tr>';
				while (i<data.length){
					j += '<tr class="TR_STYLE2">';
					j += '<td><input type="text" class="INPUT_STYLE1" style="width: 160px" id="method'+i+'" value="'+data[i]+'"/></td>';
					j += '<td>';
					j += '<img src="${pageContext.request.contextPath}/page/images/bt_edit.gif" title="编辑" style="cursor:pointer;" onclick="changeMethod(`'+data[i]+'`,'+i+')"/></a>';
					j += '<img src="${pageContext.request.contextPath}/page/images/bt_del.gif" title="删除" style="cursor:pointer;" onclick="deleteMethod('+i+')"/>';
					j +='</td>';
					j += '</tr>';
					i++;
				}
				$("#listManage").append(s);
				$("#listMethod").append(j);
			}
		})

		function addManage() {
			var toast1 = document.getElementById("toast1");
			var toast2 = document.getElementById("toast2");
			var toast3 = document.getElementById("toast3");
			if ($("#addManage").val()===""){
				toast3.style.display="block";
				setTimeout(function(){toast3.style.display="none";
				},1000);
			}else{
				$.ajax({
					type:"get",
					url:"${pageContext.request.contextPath}/client/addManage?s="+$("#addManage").val(),
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

		function changeManage(s,i) {
			var toast1 = document.getElementById("toast1");
			var toast2 = document.getElementById("toast2");
			var manageName = document.getElementById("manage"+i);
				$.ajax({
					type:"get",
					url:"${pageContext.request.contextPath}/client/changeManage?s="+manageName.value+"&s1="+s,
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

		function deleteManage(s) {
			if (confirm("确定删除此项目吗？")) {
				var manageName = document.getElementById("manage"+s);
				$.ajax({
					type: "get",
					url: "${pageContext.request.contextPath}/client/removeManage?s="+manageName.value,
					success:function (){
						window.location.reload();
					}
				})
			}
		}


		function addMethod() {
			var toast1 = document.getElementById("toast1");
			var toast2 = document.getElementById("toast2");
			var toast3 = document.getElementById("toast3");
			if ($("#addMethod").val()===""){
				toast3.style.display="block";
				setTimeout(function(){toast3.style.display="none";
				},1000);
			}else{
				$.ajax({
					type:"get",
					url:"${pageContext.request.contextPath}/client/addMethod?s="+$("#addMethod").val(),

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

		function changeMethod(s,i) {
			var toast1 = document.getElementById("toast1");
			var toast2 = document.getElementById("toast2");
			var methodName = document.getElementById("method"+i);
			$.ajax({
				type:"get",
				url:"${pageContext.request.contextPath}/client/changeMethod?s="+methodName.value+"&s1="+s,
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

		function deleteMethod(s) {
			if (confirm("确定删除此项目吗？")) {
				var methodName = document.getElementById("method"+s);
				$.ajax({
					type: "get",
					url: "${pageContext.request.contextPath}/client/removeMethod?s="+methodName.value,
					success:function (){
						window.location.reload();
					}
				})
			}
		}
	</script>
	</body>
</html>
