<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>编辑职务</title>
		<link rel="stylesheet"
              href="${pageContext.request.contextPath}/page/css/table.css" type="text/css"/>
		<script type="text/javascript" src="${pageContext.request.contextPath}/page/javascript/jquery-1.7.2.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/page/javascript/right_list_information.js"></script>
		<style type="text/css">
			.parent {
				margin-left: 50px;
			}
			.children {
				margin-left: 20px;
			}
			body {
				background-color: rgba(148 188 231 / 24%);
				background-image: none;
				margin-left: 20px;
				margin-top: 20px;
			}
			.grandfather{
				padding-top: 2px;
				border: 1px solid black;
			}
			/*.parent table{*/
			/*	border: none;*/
			/*}*/
		</style>
	</head>
	<body>
			<table width="100%">
				<tr>
					<td>
						<font color="black">您正在做的业务是：人力资源--权限管理--编辑职务</font>
					</td>
				</tr>
				<tr>
					<td align="right">
						<input type="submit" id="powerAction!doModifyRight_0" value="&#20445;&#23384;" class="BUTTON_STYLE1" onclick="save()"/>

						<input type="button" value="返回" class="BUTTON_STYLE1"
							onclick="history.back()">
					</td>
				</tr>
			</table>
			<table width="100%" border="1" cellpadding=3 cellspacing=1
				bordercolorlight=#848284 bordercolordark=#eeeeee
				class="TABLE_STYLE1">
				<tr id="jobBasicInform">
					<td class="TD_STYLE1">职务编号</td>
					<td class="TD_STYLE2">${job.mak_id}</td>
				</tr>
				<tr>
					<%--影响职务排序--%>
					<td class="TD_STYLE1">职务分类编号</td>
						<td class="TD_STYLE2">
							<input type="text" class="INPUT_STYLE2" value="${job.major_kind_id}"
								   id="major_kind_id"/>
						</td>
					<td class="TD_STYLE1">职务分类名称</td>
					<td class="TD_STYLE2">
						<input type="text" class="INPUT_STYLE2" value="${job.major_name}"
							   id="major_name"/>
				<tr>
<%--					影响职务等级排序--%>
					<td class="TD_STYLE1">职务等级编号</td>
					<td class="TD_STYLE2">
						<input type="text" class="INPUT_STYLE2" value="${job.major_id}"
							   id="job.major_id"/>
					</td>
					<td class="TD_STYLE1">职务名称</td>
					<td class="TD_STYLE2">
						<input type="text" class="INPUT_STYLE2" value="${job.major_kind_name}"
							   id="major_kind_name"/>
					</td>
				</tr>
				<tr id="jExplain">
					<td class="TD_STYLE1">职务说明</td>
					<td class="TD_STYLE2">
						<textarea name="humanFile.humanHistroyRecords" id="explain" rows="4" class="TEXTAREA_STYLE1">${job.jexplain}</textarea>
					</td>
				</tr>
			</table>



				<table class="grandfather">
					<tr>
						<td>
							<input type="checkbox" name="rightCodes" value="L01" class="grandfather_ck" id="0"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L01" />
							&#25307;&#32856;&#31649;&#29702;
							<hr/>
							<table class="parent">


										<tr>
											<td>
												<input type="checkbox" name="rightCodes" value="L0101" class="parent_ck"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L0101" id="1"/>
												&#32844;&#20301;&#21457;&#24067;&#31649;&#29702;
												<hr/>
												<table class="children">
													<tr>  		<td>
																	<input type="checkbox" name="rightCodes" value="L010101" class="children_ck"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L010101" id="2"/>
																	&#32844;&#20301;&#21457;&#24067;&#30331;&#35760;
																</td>
															  		<td>
																	<input type="checkbox" name="rightCodes" value="L010102" class="children_ck"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L010102" id="3"/>
																	&#32844;&#20301;&#21457;&#24067;&#21464;&#26356;
																</td>
															  		<td>
																	<input type="checkbox" name="rightCodes" value="L010103" class="children_ck"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L010103" id="4"/>
																	&#32844;&#20301;&#21457;&#24067;&#26597;&#35810;
																	</td>
													</tr>
												</table>
												<hr/>
											</td>
										</tr>



										<tr>
											<td>
												<input type="checkbox" name="rightCodes" value="L0102" class="parent_ck"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L0102" id="5"/>
												&#31616;&#21382;&#31649;&#29702;
												<hr/>
												<table class="children">
													<tr>


																<td>
																	<input type="checkbox" name="rightCodes" value="L010201" class="children_ck"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L010201" />
																	&#31616;&#21382;&#30331;&#35760;
																</td>
															  		<td>
																	<input type="checkbox" name="rightCodes" value="L010202" class="children_ck"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L010202" />
																	&#31616;&#21382;&#31579;&#36873;
																</td>
															  		<td>
																	<input type="checkbox" name="rightCodes" value="L010203" class="children_ck"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L010203" />
																	&#26377;&#25928;&#31616;&#21382;&#26597;&#35810;
																</td>


													</tr>
												</table>
												<hr/>
											</td>
										</tr>



										<tr>
											<td>
												<input type="checkbox" name="rightCodes" value="L0103" class="parent_ck"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L0103" />
												&#38754;&#35797;&#31649;&#29702;
												<hr/>
												<table class="children">
													<tr>
   		<td>
																	<input type="checkbox" name="rightCodes" value="L010301" class="children_ck"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L010301" />
																	&#38754;&#35797;&#32467;&#26524;&#30331;&#35760;
																</td>
															  		<td>
																	<input type="checkbox" name="rightCodes" value="L010302" class="children_ck"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L010302" />
																	&#38754;&#35797;&#31579;&#36873;
																</td>
													</tr>
												</table>
												<hr/>
											</td>
										</tr>



										<tr>
											<td>
												<input type="checkbox" name="rightCodes" value="L0104" class="parent_ck"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L0104" />
												&#25307;&#32856;&#32771;&#35797;&#39064;&#24211;&#31649;&#29702;
												<hr/>
												<table class="children">
													<tr>

															  		<td>
																	<input type="checkbox" name="rightCodes" value="L010401" class="children_ck"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L010401" />
																	&#35797;&#39064;&#30331;&#35760;
																</td>
															  		<td>
																	<input type="checkbox" name="rightCodes" value="L010402" class="children_ck"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L010402" />
																	&#35797;&#39064;&#26597;&#35810;
																</td>
															  		<td>
																	<input type="checkbox" name="rightCodes" value="L010403" class="children_ck"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L010403" />
																	&#35797;&#39064;&#21464;&#26356;
																</td>
													</tr>
												</table><hr/>
											</td>
										</tr>
										<tr>
											<td>
												<input type="checkbox" name="rightCodes" value="L0105" class="parent_ck"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L0105" />
												&#25307;&#32856;&#32771;&#35797;&#31649;&#29702;
												<hr/>
												<table class="children">
													<tr>
																<td>
																	<input type="checkbox" name="rightCodes" value="L010501" class="children_ck"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L010501" />
																	&#32771;&#35797;&#20986;&#39064;
																</td>
															  		<td>
																	<input type="checkbox" name="rightCodes" value="L010502" class="children_ck"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L010502" />
																	&#32771;&#35797;&#31572;&#39064;
																</td>
															  		<td>
																	<input type="checkbox" name="rightCodes" value="L010503" class="children_ck"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L010503" />
																	&#32771;&#35797;&#38405;&#21367;
																</td>
															  		<td>
																	<input type="checkbox" name="rightCodes" value="L010504" class="children_ck"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L010504" />
																	&#25104;&#32489;&#26597;&#35810;&#31579;&#36873;
																</td>
													</tr>
												</table><hr/>
											</td>
										</tr>
										<tr>
											<td>
												<input type="checkbox" name="rightCodes" value="L0106" class="parent_ck"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L0106" />
												&#24405;&#29992;&#31649;&#29702;
												<hr/>
												<table class="children">
													<tr>
																<td>
																	<input type="checkbox" name="rightCodes" value="L010601" class="children_ck"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L010601" />
																	&#24405;&#29992;&#30003;&#35831;
																</td>
															  		<td>
																	<input type="checkbox" name="rightCodes" value="L010602" class="children_ck"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L010602" />
																	&#24405;&#29992;&#23457;&#25209;
																</td>
															  		<td>
																	<input type="checkbox" name="rightCodes" value="L010603" class="children_ck"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L010603" />
																	&#24405;&#29992;&#26597;&#35810;
																</td>
													</tr>
												</table><hr/>
											</td>
										</tr>
							</table>
						</td>
					</tr>
				</table>
				<hr/>

				<table class="grandfather">
					<tr>
						<td>
							<input type="checkbox" name="rightCodes" value="L02" class="grandfather_ck"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L02" />
							&#20154;&#21147;&#36164;&#28304;&#26723;&#26696;&#31649;&#29702;
							<table class="parent">

										<tr>
											<td>
												<input type="checkbox" name="rightCodes" value="L0201" class="parent_ck"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L0201" />
												&#20154;&#21147;&#36164;&#28304;&#26723;&#26696;&#30331;&#35760;
												<table class="children">
													<tr>


													</tr>
												</table><hr/>
											</td>
										</tr>



										<tr>
											<td>
												<input type="checkbox" name="rightCodes" value="L0202" class="parent_ck"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L0202" />
												&#20154;&#21147;&#36164;&#28304;&#26723;&#26696;&#30331;&#35760;&#22797;&#26680;
												<table class="children">
													<tr>


													</tr>
												</table><hr/>
											</td>
										</tr>



										<tr>
											<td>
												<input type="checkbox" name="rightCodes" value="L0203" class="parent_ck"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L0203" />
												&#20154;&#21147;&#36164;&#28304;&#26723;&#26696;&#26597;&#35810;
												<table class="children">
													<tr>


													</tr>
												</table><hr/>
											</td>
										</tr>



										<tr>
											<td>
												<input type="checkbox" name="rightCodes" value="L0204" class="parent_ck"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L0204" />
												&#20154;&#21147;&#36164;&#28304;&#26723;&#26696;&#21464;&#26356;
												<table class="children">
													<tr>


													</tr>
												</table><hr/>
											</td>
										</tr>



										<tr>
											<td>
												<input type="checkbox" name="rightCodes" value="L0205" class="parent_ck"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L0205" />
												&#20154;&#21147;&#36164;&#28304;&#26723;&#26696;&#21024;&#38500;&#31649;&#29702;
												<hr/>
												<table class="children">
													<tr>


   		<td>
																	<input type="checkbox" name="rightCodes" value="L020501" class="children_ck"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L020501" />
																	&#20154;&#21147;&#36164;&#28304;&#26723;&#26696;&#21024;&#38500;
																</td>
															  		<td>
																	<input type="checkbox" name="rightCodes" value="L020502" class="children_ck"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L020502" />
																	&#26723;&#26696;&#21024;&#38500;&#24674;&#22797;
																</td>
															  		<td>
																	<input type="checkbox" name="rightCodes" value="L020503" class="children_ck"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L020503" />
																	&#20154;&#21147;&#36164;&#28304;&#26723;&#26696;&#27704;&#20037;&#21024;&#38500;
																</td>





													</tr>
												</table><hr/>
											</td>
										</tr>
							</table>
						</td>
					</tr>
				</table>
				<hr/>

				<table class="grandfather">
					<tr>
						<td>
							<input type="checkbox" name="rightCodes" value="L03" class="grandfather_ck"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L03" />
							&#34218;&#37228;&#26631;&#20934;&#31649;&#29702;
							<table class="parent">
										<tr>
											<td>
												<input type="checkbox" name="rightCodes" value="L0301" class="parent_ck"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L0301" />
												&#34218;&#37228;&#26631;&#20934;&#30331;&#35760;
												<table class="children">
													<tr>


													</tr>
												</table><hr/>
											</td>
										</tr>



										<tr>
											<td>
												<input type="checkbox" name="rightCodes" value="L0302" class="parent_ck"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L0302" />
												&#34218;&#37228;&#26631;&#20934;&#30331;&#35760;&#22797;&#26680;
												<table class="children">
													<tr>


													</tr>
												</table><hr/>
											</td>
										</tr>



										<tr>
											<td>
												<input type="checkbox" name="rightCodes" value="L0303" class="parent_ck"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L0303" />
												&#34218;&#37228;&#26631;&#20934;&#26597;&#35810;
												<table class="children">
													<tr>


													</tr>
												</table><hr/>
											</td>
										</tr>



										<tr>
											<td>
												<input type="checkbox" name="rightCodes" value="L0304" class="parent_ck"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L0304" />
												&#34218;&#37228;&#26631;&#20934;&#21464;&#26356;
												<table class="children">
													<tr>


													</tr>
												</table><hr/>
											</td>
										</tr>
							</table>
						</td>
					</tr>
				</table>
				<hr/>

				<table class="grandfather">
					<tr>
						<td>
							<input type="checkbox" name="rightCodes" value="L04" class="grandfather_ck"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L04" />
							&#34218;&#37228;&#21457;&#25918;&#31649;&#29702;
							<table class="parent">
										<tr>
											<td>
												<input type="checkbox" name="rightCodes" value="L0401" class="parent_ck"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L0401" />
												&#34218;&#37228;&#21457;&#25918;&#30331;&#35760;
												<table class="children">
													<tr>


													</tr>
												</table><hr/>
											</td>
										</tr>



										<tr>
											<td>
												<input type="checkbox" name="rightCodes" value="L0402" class="parent_ck"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L0402" />
												&#34218;&#37228;&#21457;&#25918;&#30331;&#35760;&#22797;&#26680;
												<table class="children">
													<tr>


													</tr>
												</table><hr/>
											</td>
										</tr>



										<tr>
											<td>
												<input type="checkbox" name="rightCodes" value="L0403" class="parent_ck"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L0403" />
												&#34218;&#37228;&#21457;&#25918;&#26597;&#35810;
												<table class="children">
													<tr>


													</tr>
												</table><hr/>
											</td>
										</tr>
							</table>
						</td>
					</tr>
				</table>
				<hr/>

				<table class="grandfather">
					<tr>
						<td>
							<input type="checkbox" name="rightCodes" value="L05" class="grandfather_ck"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L05" />
							&#35843;&#21160;&#31649;&#29702;
							<table class="parent">

										<tr>
											<td>
												<input type="checkbox" name="rightCodes" value="L0501" class="parent_ck"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L0501" />
												&#35843;&#21160;&#30331;&#35760;
												<table class="children">
													<tr>


													</tr>
												</table><hr/>
											</td>
										</tr>



										<tr>
											<td>
												<input type="checkbox" name="rightCodes" value="L0502" class="parent_ck"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L0502" />
												&#35843;&#21160;&#23457;&#26680;
												<table class="children">
													<tr>


													</tr>
												</table><hr/>
											</td>
										</tr>



										<tr>
											<td>
												<input type="checkbox" name="rightCodes" value="L0503" class="parent_ck"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L0503" />
												&#35843;&#21160;&#26597;&#35810;
												<table class="children">
													<tr>


													</tr>
												</table><hr/>
											</td>
										</tr>

							</table>
						</td>
					</tr>
				</table>
				<hr/>

				<table class="grandfather">
					<tr>
						<td>
							<input type="checkbox" name="rightCodes" value="L06" class="grandfather_ck"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L06" />
							&#23458;&#25143;&#21270;&#35774;&#32622;
							<hr/>
							<table class="parent">
										<tr>
											<td>
												<input type="checkbox" name="rightCodes" value="L0601" class="parent_ck"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L0601" />
												&#20154;&#21147;&#36164;&#28304;&#26723;&#26696;&#31649;&#29702;&#35774;&#32622;
												<table class="children">
													<tr>
														<td>
															<input type="checkbox" name="rightCodes" value="L060101" class="children_ck"/>
															<input type="hidden"  name="__checkbox_rightCodes" value="L060101" />
															&#8544;&#32423;&#26426;&#26500;&#35774;&#32622;
														</td>
														<td>
															<input type="checkbox" name="rightCodes" value="L060102" class="children_ck"/>
															<input type="hidden"  name="__checkbox_rightCodes" value="L060102" />
															&#8545;&#32423;&#26426;&#26500;&#35774;&#32622;
														</td>
														<td>
															<input type="checkbox" name="rightCodes" value="L060103" class="children_ck"/>
															<input type="hidden"  name="__checkbox_rightCodes" value="L060103" />
															&#8546;&#32423;&#26426;&#26500;&#35774;&#32622;
														</td>
													</tr>
													<hr/>
													<tr>
														<td>
															<input type="checkbox" name="rightCodes" value="L060105" class="children_ck"/>
															<input type="hidden"  name="__checkbox_rightCodes" value="L060105" />
															&#32844;&#20301;&#20998;&#31867;&#35774;&#32622;
														</td>
														<td>
															<input type="checkbox" name="rightCodes" value="L060107" class="children_ck"/>
															<input type="hidden"  name="__checkbox_rightCodes" value="L060107" />
															&#20844;&#20849;&#23646;&#24615;&#35774;&#32622;
														</td>
														<td>
															<input type="checkbox" name="rightCodes" value="L060201" class="children_ck"/>
															<input type="hidden"  name="__checkbox_rightCodes" value="L060201" />
															&#34218;&#37228;&#39033;&#30446;&#35774;&#32622;
														</td>
														<td>
															<input type="checkbox" name="rightCodes" value="L060202" class="children_ck"/>
															<input type="hidden"  name="__checkbox_rightCodes" value="L060202" />
															&#34218;&#37228;&#21457;&#25918;&#26041;&#24335;&#35774;&#32622;
														</td>

													</tr>
												</table><hr/>
											</td>
										</tr>
								<tr>
									<td>
										<input type="checkbox" name="rightCodes" value="L0605" class="parent_ck"/>
										<input type="hidden"  name="__checkbox_rightCodes" value="L0605" />
										&#26435;&#38480;&#31649;&#29702;
										<table class="children">
											<tr>
												<td>
													<input type="checkbox" name="rightCodes" value="L060501" class="children_ck"/>
													<input type="hidden"  name="__checkbox_rightCodes" value="L060501" />
													&#29992;&#25143;&#31649;&#29702;
													<table class="children">
														<tr>


														</tr>
													</table><hr/>
												</td>
											</tr>



											<tr>
												<td>
													<input type="checkbox" name="rightCodes" value="L060502" class="children_ck"/>
													<input type="hidden"  name="__checkbox_rightCodes" value="L060502" />
													&#35282;&#33394;&#31649;&#29702;
													<table class="children">
														<tr>


														</tr>
													</table><hr/>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
				<hr/>

				<table class="grandfather">
					<tr>
						<td>
							<input type="checkbox" name="rightCodes" value="L07" class="grandfather_ck"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L07" />
							&#26631;&#20934;&#25968;&#25454;&#25253;&#34920;
							<hr/>
							<table class="parent">

										<tr>
											<td>
												<input type="checkbox" name="rightCodes" value="L0701" class="parent_ck"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L0701" />
												Excel&#26631;&#20934;&#25968;&#25454;&#25253;&#34920;
												<table class="children">
													<tr>
													</tr>
												</table><hr/>
											</td>
										</tr>
										<tr>
											<td>
												<input type="checkbox" name="rightCodes" value="L0702" class="parent_ck"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L0702" />
												Pdf&#26631;&#20934;&#25968;&#25454;&#25253;&#34920;
												<table class="children">
													<tr>
													</tr>
												</table><hr/>
											</td>
										</tr>
										<tr>
											<td>
												<input type="checkbox" name="rightCodes" value="L0703" class="parent_ck"/>
<input type="hidden"  name="__checkbox_rightCodes" value="L0703" />
												Xml&#26631;&#20934;&#25968;&#25454;&#25253;&#34920;
												<table class="children">
													<tr>


													</tr>
												</table><hr/>
											</td>
										</tr>
							</table>
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
		<div style="display: none"><textarea id="limit">${job.jlimit}</textarea></div>
	</body>
	<script type="text/javascript">

	window.onload=function doLimit(){
		let s=$("#limit").val();
		var rightCodes=document.getElementsByName("rightCodes");
		for (let i = 0; i < s.length; i++) {
			if (s.charAt(i)==='T'){
				rightCodes[i].checked=true;
			}
		}
	}
	function save() {

		var toast1 = document.getElementById("toast1");
		var toast2 = document.getElementById("toast2");
		var toast3 = document.getElementById("toast3");
		var rightCodes=document.getElementsByName("rightCodes");
		if ($("#major_kind_id").val()===""||$("#major_kind_name").val()===null||$("#major_id").val()===null||$("#major_name").val()===null||$("#explain").val()===null){
			toast3.style.display="block";
			setTimeout(function(){toast3.style.display="none";
			},1000);
		}else {
			let s="";
			for (let i = 0; i < rightCodes.length; i++) {
				if (rightCodes[i].checked===true){
					s+='T';
				}else {
					s+='F';
				}
			}
			$.ajax({
				type:"get",
				url:"${pageContext.request.contextPath}/jobs/changeJob?mak_id=${job.mak_id}&major_kind_id="+$("#major_kind_id").val()+"&major_kind_name="+$("#major_kind_name").val()+"&major_id="+$("#major_id").val()+"&major_name="+$("#major_name").val()+"&Jlimit="+s+"&Jexplain="+$("#explain").val(),

				success:function (){
					toast1.style.display="block";
					setTimeout(function(){toast1.style.display="none";
						location.href="${pageContext.request.contextPath}/index/jobList";
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
</html>
