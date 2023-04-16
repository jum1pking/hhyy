<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>登录</title>
	<script src="${pageContext.request.contextPath}/page/javascript/jquery-1.7.2.js"></script>
	<script src="${pageContext.request.contextPath}/page/javascript/jquery.messager.js"></script>
	<script src="${pageContext.request.contextPath}/page/javascript/login.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/page/css/table.css" type="text/css"/>

	<script>
		function doLogin() {
			var userName = $("#userName");
			var userPassword = $("#userPassword");
			var toast = document.getElementById("toast");
			var reg = /^\S{1,}$/;
			if ((!reg.test(userName.val()))||(!reg.test(userPassword.val()))) {
				userName[0].select();
				toast.style.display="block";
				setTimeout(function(){toast.style.display="none";},500);
				return false;
			}else {
				$.ajax({
					type:"get",
					url:"${pageContext.request.contextPath}/user/checkUser?username="+$("#userName").val()+"&userPassword="+$("#userPassword").val(),

					success:function (data){
						if (data){
							console.log(data.u_job)
							location.href = "${pageContext.request.contextPath}/index/index?truename="+data.u_true_name+"&job="+data.u_job;
						}else {
							toast.style.display="block";
							setTimeout(function(){toast.style.display="none";},500);
						}
					}
				})
			}
		}
	</script>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<style type=text/css>
		*{
			margin: 0 auto;
		}
		body {
			background-image:url("${pageContext.request.contextPath}/page/images/loginbackground.jpg");
			background-repeat:no-repeat;
			background-position:100% 0;
			margin-left: 20px;
			margin-top: 20px;
			font-size: 12px;

			font-family: 宋体;
		}
		td {
			text-align: center;
			font-size: 20px;
			color: #a250fb;
			font-family: 宋体
		}
		#smallest{
			padding: 50px;
			border-radius: 20px;
			background-color: rgba(83, 173, 255, 0.4);
		}
	</style>

</head>
<body>
<form action="" method="post">
	<div>
		<table cellspacing=0 cellpadding=0  align=center border=0>
			<tbody>
			<tr>
				<td style="height: 105px">
					<img  border=0>
				</td>
			</tr>
			<tr>
				<td  height=300>
					<table height=300 cellpadding=0 width=900; border=0>
						<tbody>

						<tr>
							<td>
								<table cellspacing=0 cellpadding=2 border=0 id="smallest">
									<tbody>
									<tr>
										<td colspan=2 height=35 ><h1>人事系统登陆</h1></td>
									</tr>
									<tr>
										<td style="">
											<input id="userName" placeholder="请输入用户账号" style="margin-top: 45px;color:rgba(0,0,0,0.6);border-style: none;height:30px;width:225px"/>
										</td>
									</tr>
									<tr>
										<td style="">
											<input id="userPassword" placeholder="请输入密码" style="margin-top: 40px;color:rgba(0,0,0,0.6);border-style: none;height:30px;width:225px" type="password"/>
										</td>
									</tr>

									<tr>
										<td style="height: 18px"></td>
										<td style="height: 18px"></td>
										<td style="height: 18px"></td>
									</tr>
									<tr>

										<td>
											<input type="button"  value=" " style="margin-top: 25px;cursor: pointer;width: 104px;height: 36px;background-image: url(${pageContext.request.contextPath}/page/images/login_button.gif);border-style: none;" onclick="doLogin()"/>
										</td>
									</tr>
									</tbody>
								</table>
							</td>
						</tr>
						</tbody>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<img border=0>
				</td>
			</tr>
			</tbody>
		</table>
	</div>
</form>
<div class="toast">
	账号或密码错误
</div>
</body>
</html>
