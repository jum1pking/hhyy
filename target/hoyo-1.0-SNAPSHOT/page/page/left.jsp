<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>无标题文档</title>
		<link rel="stylesheet"
              href="${pageContext.request.contextPath}/page/css/table.css" type="text/css"/>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/page/javascript/easyui/themes/default/easyui.css"/>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/page/javascript/easyui/themes/icon.css"/>
		<script type="text/javascript" src="${pageContext.request.contextPath}/page/javascript/jquery-1.7.2.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/page/javascript/easyui/my.js"></script>
		<style type="text/css">
			body{
				padding-left: 0px;
				border-left: 3px solid white;
				background-image: none;
				background-color: rgba(122, 229, 238, 0.15);
				padding-right: 2px;
				FONT-SIZE: 10pt;
				margin: 0px;
			}
			.tree-node-selected a{
				color: #fff;
			}
		</style>
	</head>
	<body onload="doLimit()">
		<ul id="tt1" class="easyui-tree" animate="true">
				<li>
					<span>招聘管理</span>
					<ul>
								<li state="closed">
									<span>
										职位发布管理
									</span>
									<ul>
												<li>
													<span>
														<a href="recruit/position/position_register" target="mainFrame" style="color:black;">职位发布登记</a>
													</span>
												</li>
												<li>
													<span>
														<a href="recruit/position/position_change_update" target="mainFrame" style="color:black;">职位发布变更</a>
													</span>
												</li>
												<li>
													<span>
														<a href="recruit/position/position_release_search" target="mainFrame" style="color:black;">职位发布查询</a>
													</span>
												</li>
									</ul>
								</li>
								<li state="closed">
									<span>
										简历管理
									</span>
									<ul>
												<li>
													<span>
														<a href="recruit/resume/register" target="mainFrame" style="color:black;">简历登记</a>
													</span>
												</li>
												<li>
													<span>
														<a href="recruit/resume/resume-choose" target="mainFrame" style="color:black;">简历筛选</a>
													</span>
												</li>
												<li>
													<span>
														<a href="recruit/resume/valid-resume" target="mainFrame" style="color:black;">有效简历查询</a>
													</span>
												</li>
									</ul>
								</li>
								<li state="closed">
									<span>
										面试管理
									</span>
									<ul>
												<li>
													<span>
														<a href="recruit/interview/interview-list" target="mainFrame" style="color:black;">面试结果登记</a>
													</span>
												</li>
												<li>
													<span>
														<a href="recruit/interview/sift-list" target="mainFrame" style="color:black;">面试筛选</a>
													</span>
												</li>
									</ul>
								</li>
								<li state="closed">
									<span>
										录用管理
									</span>
									<ul>
												<li>
													<span>
														<a href="recruit/employ/register_list" target="mainFrame" style="color:black;">录用申请</a>
													</span>
												</li>
												<li>
													<span>
														<a href="recruit/employ/check_list" target="mainFrame" style="color:black;">录用审批</a>
													</span>
												</li>
												<li>
													<span>
														<a href="recruit/employ/list" target="mainFrame" style="color:black;">录用查询</a>
													</span>
												</li>
									</ul>
								</li>
					</ul>
				</li>
				<li>
					<span>员工档案管理</span>
					<ul>
								<li>
									<span>
											<a href="humanResources/human_register" target="mainFrame" style="color:black;">员工档案登记</a>
									</span>
								</li>
								<li>
									<span>
											<a href="humanResources/check_list" target="mainFrame" style="color:black;">员工档案登记复核</a>
									</span>
								</li>
								<li>
									<span>
											<a href="humanResources/query_locate" target="mainFrame" style="color:black;">员工档案查询</a>
									</span>
								</li>
								<li>
									<span>
											<a href="humanResources/change_locate" target="mainFrame" style="color:black;">员工档案变更</a>
									</span>
								</li>
								<li state="closed">
									<span>
										员工档案删除管理
									</span>
									<ul>
												<li>
													<span>
															<a href="humanResources/delete_locate" target="mainFrame" style="color:black;">员工档案删除</a>
													</span>
												</li>
												<li>
													<span>
															<a href="humanResources/recovery_locate" target="mainFrame" style="color:black;">档案删除恢复</a>
													</span>
												</li>
												<li>
													<span>
															<a href="humanResources/delete_forever_list" target="mainFrame" style="color:black;">员工档案永久删除</a>
													</span>
												</li>
									</ul>
								</li>
					</ul>
				</li>
				<li>
					<span>薪酬标准管理</span>
					<ul>
								<li>
									<span>
										<a href="salaryCriterion/salarystandard_register" target="mainFrame" style="color:black;">薪酬标准登记</a>
									</span>
								</li>
								<li>
									<span>
										<a href="salaryCriterion/salarystandard_check_list" target="mainFrame" style="color:black;">薪酬标准登记复核</a>
									</span>
								</li>
								<li>
									<span>
										<a href="salaryCriterion/salarystandard_query_locate" target="mainFrame" style="color:black;">薪酬标准查询</a>
									</span>
								</li>
								<li>
									<span>
										<a href="salaryCriterion/salarystandard_change_locate" target="mainFrame" style="color:black;">薪酬标准变更</a>
									</span>
								</li>
					</ul>
				</li>
				<li>
					<span>薪酬发放管理</span>
					<ul>
								<li>
									<span>
										<a href="salaryGrant/register_locate" target="mainFrame" style="color:black;">薪酬发放登记</a>
									</span>
								</li>
								<li>
									<span>
										<a href="salaryGrant/check_list" target="mainFrame" style="color:black;">薪酬发放登记复核</a>
									</span>
								</li>
								<li>
									<span>
										<a href="salaryGrant/query_locate" target="mainFrame" style="color:black;">薪酬发放查询</a>
									</span>
								</li>
					</ul>
				</li>
				<li>
					<span>调动管理</span>
					<ul>
								<li>
									<span>
										<a href="transfer/register_locate" target="mainFrame" style="color:black;">调动登记</a>
									</span>
								</li>
								<li>
									<span>
										<a href="transfer/check_list" target="mainFrame" style="color:black;">调动审核</a>
									</span>
								</li>
								<li>
									<span>
										<a href="transfer/locate" target="mainFrame" style="color:black;">调动查询</a>
									</span>
								</li>
					</ul>
				</li>
				<li>
					<span>客户化设置</span>
					<ul>
						<li state="closed">
							<span>
								信息支持表设置
							</span>
							<ul>
								<li>
									<span>
										<a href="${pageContext.request.contextPath}/index/PFirstKind" target="mainFrame" style="color:black;">Ⅰ级机构设置</a>
									</span>
								</li>
								<li>
									<span>
										<a href="${pageContext.request.contextPath}/index/PSecondKind" target="mainFrame" style="color:black;">Ⅱ级机构设置</a>
									</span>
								</li>
								<li>
									<span>
										<a href="${pageContext.request.contextPath}/index/PThirdKind" target="mainFrame" style="color:black;">Ⅲ级机构设置</a>
									</span>
								</li>
								<li>
									<span>
										<a href="${pageContext.request.contextPath}/index/PMajorKind" target="mainFrame" style="color:black;">部门分类设置</a>
									</span>
								</li>
								<li>
									<span>
										<a href="${pageContext.request.contextPath}/index/PSalaryItem" target="mainFrame" style="color:black;">薪酬项目设置</a>
									</span>
								</li>
							</ul>
						</li>
						<li state="closed">
							<span>权限管理</span>
							<ul>
								<li>
									<span>
											<a href="${pageContext.request.contextPath}/index/userList" target="mainFrame" style="color:black;">用户管理</a>
									</span>

								</li>
								<li>
									<span>
											<a href="${pageContext.request.contextPath}/index/jobList" target="mainFrame" style="color:black;">职务管理</a>
									</span>
								</li>
							</ul>
						</li>
					</ul>
				</li>
				<li>
					<span>标准数据报表</span>
					<ul>
								<li>
									<span>
											<a href="criterionData/excel_locate" target="mainFrame" style="color:black;">Excel标准数据报表</a>
									</span>
								</li>
								<li>
									<span>
											<a href="criterionData/pdf_locate" target="mainFrame" style="color:black;">Pdf标准数据报表</a>
									</span>
								</li>
								<li>
									<span>
											<a href="criterionData/xml_locate" target="mainFrame" style="color:black;">Xml标准数据报表</a>
									</span>
								</li>
						</ul>
				</li>

		</ul>
		<div style="display: none"><textarea id="limit">${limit}</textarea></div>
	</body>
	<script>
		function doLimit(){
			let s=$("#limit").val();
			var x = document.getElementsByClassName("tree-node");
			for (let i=0;i<s.length;i++){
				if(s.charAt(i)==="F"){
					x[i].style.display="none";
				}

			}
		}
	</script>
</html>
