<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/page/css/table.css"
			type="text/css">
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/page/javascript/comm/comm.js">
		</script>
		<script type="text/javascript"
				src="${pageContext.request.contextPath}/page/javascript/jquery-1.7.2.js">
		</script>
	</head>
	<body>
			<table width="100%">
				<tr>
					<td>
						<font color="black">您正在做的业务是：人力资源--客户化设置--人力资源档案管理设置--III级机构设置--III级机构变更
						</font>
					</td>
				</tr>
				<tr>
					<td align="right">
						<input type="submit" value="提交" class="BUTTON_STYLE1" onclick="save()">
						<input type="button" value="返回" class="BUTTON_STYLE1"
							onclick="history.back();">
					</td>
				</tr>
			</table>

			<table width="100%" border="1" cellpadding=0 cellspacing=1
				bordercolorlight=#848284 bordercolordark=#eeeeee
				class="TABLE_STYLE1">
				
				<tr>
					<td width="19%" class="TD_STYLE1">
						I级机构名称
					</td>
					<td width="81%" class="TD_STYLE2">
						<select name="cfsk.firstKindName" id="firstKName">
						</select>
					</td>
				</tr>
				<tr>
					<td width="19%" class="TD_STYLE1">
						II级机构名称
					</td>
					<td width="81%" class="TD_STYLE2">
						<select name="cfsk.firstKindName" id="secondKName">
						</select>
					</td>
				</tr>
				<tr>
					<td width="19%" class="TD_STYLE1">
						III级机构编号
					</td>
					<td width="81%" class="TD_STYLE2">
						<input type="text" readonly="readonly" class="INPUT_STYLE1" name="cftk.thirdKindId" value="${thirdKind.third_kind_id}" id="thirdKindId"/>
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						III级机构名称
					</td>
					<td class="TD_STYLE2">
						<input type="text" readonly="readonly" class="INPUT_STYLE1" name="cftk.thirdKindName" value="${thirdKind.third_kind_name}" id="thirdKindName"/>
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						销售责任人编号（多个编号之间请用"半角逗号"加"一个空格"隔开，如", "）
					</td>
					<td class="TD_STYLE2">
						<textarea rows="4" cols="120" class="TEXTAREA_STYLE1" name="cftk.thirdKindSaleId" id="thirdKindSaleId">${thirdKind.third_kind_sale_id}</textarea>
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						是否为零售店（是/否）
					</td>
					<td class="TD_STYLE2">
					<select name="cftk.thirdKindIsRetail" id="flag">
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
			url: "${pageContext.request.contextPath}/client/getFirstKindName",
			success:function (data){
				let s='';
				s += '<option value="${thirdKind.first_kind_id}&first_kind_name=${thirdKind.first_kind_name}">${thirdKind.first_kind_name}</option>';
				for (let i=0;i<data.length;i++){
					s += '<option value="'+data[i].first_kind_id+'&first_kind_name='+data[i].first_kind_name+'">'+data[i].first_kind_name+'</option>';
				}
				$("select#firstKName").append(s);
			}
		})

		$.ajax({
			type: "get",
			url: "${pageContext.request.contextPath}/client/getSecondKindName",
			success:function (data){
				let s='';
				s += '<option value="${thirdKind.second_kind_id}&second_kind_name=${thirdKind.second_kind_name}">${thirdKind.second_kind_name}</option>';
				for (let i=0;i<data.length;i++){
					s += '<option value="'+data[i].second_kind_id+'&second_kind_name='+data[i].second_kind_name+'">'+data[i].second_kind_name+'</option>';
				}
				$("select#secondKName").append(s);
				let f='';
				f += '<option value="${thirdKind.third_kind_is_retail}">${thirdKind.third_kind_is_retail}</option>';
				f += '<option value="是">是</option>';
				f += '<option value="否">否</option>';
				$("select#flag").append(f);
			}

		})
		function save() {
			var toast1 = document.getElementById("toast1");
			var toast2 = document.getElementById("toast2");
			var toast3 = document.getElementById("toast3");
			if ($('#firstKName option:selected').val()===""||$('#secondKName option:selected').val()===""||$('#flag option:selected').val()===""
					||$("#thirdKindId").val()===""||$("#thirdKindName").val()===""
					||$("#thirdKindSaleId").val()===""||$("#flag").val()===""){
				toast3.style.display="block";
				setTimeout(function(){toast3.style.display="none";
				},1000);
			}else {
				$.ajax({
					type:"get",
					url:"${pageContext.request.contextPath}/client/thirdChange?ftk_id=${thirdKind.ftk_id}&first_kind_id="+$('#firstKName option:selected').val()+
							"&second_kind_id="+$('#secondKName option:selected').val()+
							"&third_kind_id="+$("#thirdKindId").val()+"&third_kind_name="+$("#thirdKindName").val()+
							"&third_kind_sale_id="+$("#thirdKindSaleId").val()+"&third_kind_is_retail="+$('#flag option:selected').val(),

					success:function (){
						toast1.style.display="block";
						setTimeout(function(){toast1.style.display="none";
							location.href="${pageContext.request.contextPath}/index/PThirdKind";
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

