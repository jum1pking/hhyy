<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet"
              href="${pageContext.request.contextPath}/page/css/table.css" type="text/css">
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
						<font color="black">您正在做的业务是：人力资源--客户化设置--人力资源档案管理设置--I级机构设置--I级机构变更
						</font>
					</td>
				</tr>
				<tr>
					<td align="right">
						<input type="submit" value="提交" class="BUTTON_STYLE1" onclick="save()"/>
						<input type="button" value="返回" class="BUTTON_STYLE1"
							onclick="history.back();">
					</td>
				</tr>
			</table>

			<table width="100%" border="1" cellpadding=0 cellspacing=1
				bordercolorlight=#848284 bordercolordark=#eeeeee
				class="TABLE_STYLE1">
				<input type="hidden" name="cffk.ffkId" value="755" />
				<tr>
					<td width="19%" class="TD_STYLE1">
						I级机构编号
					</td>
					<td width="81%" class="TD_STYLE2">
						<input type="text" name="cffk.firstKindId" value="${firstKind.first_kind_id}" id="firstKindId"
							readonly="readonly" class="INPUT_STYLE1">
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						I级机构名称
					</td>
					<td class="TD_STYLE2">
						<input type="text" name="cffk.firstKindName" value="${firstKind.first_kind_name}" id="firstKindName"
							readonly="readonly" class="INPUT_STYLE1">
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						薪酬发放责任人编号（多个编号之间请用"半角逗号"加"一个空格"隔开，如", "）
					</td>
					<td class="TD_STYLE2">
						<textarea name="cffk.firstKindSalaryId" rows="4"
							class="TEXTAREA_STYLE1" id="firstKindSalaryId">${firstKind.first_kind_salary_id}</textarea>
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						销售责任人编号（多个编号之间请用"半角逗号"加"一个空格"隔开，如", "）
					</td>
					<td class="TD_STYLE2">
						<textarea name="cffk.firstKindSaleId" rows="4"
							class="TEXTAREA_STYLE1" id="firstKindSaleId">${firstKind.first_kind_sale_id}</textarea>
					</td>
				</tr>
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
						if ($("#firstKindId").val()===""||$("#firstKindName").val()===""||$("#firstKindSalaryId").val()===""||$("#firstKindSaleId").val()===""){
							toast3.style.display="block";
							setTimeout(function(){toast3.style.display="none";
							},1000);
						}else{
							$.ajax({
								type:"get",
								url:"${pageContext.request.contextPath}/client/firstChange?ffk_id=${firstKind.ffk_id}&first_kind_id="+$("#firstKindId").val()+"&first_kind_name="+$("#firstKindName").val()+"&first_kind_salary_id="+$("#firstKindSalaryId").val()+"&first_kind_sale_id="+$("#firstKindSaleId").val(),

								success:function (){
									toast1.style.display="block";
									setTimeout(function(){toast1.style.display="none";
										location.href="${pageContext.request.contextPath}/index/PFirstKind";
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
			</table>
	</body>
</html>
