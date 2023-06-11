<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>ring聘</title>

<!-- Meta tags -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="2356097973@qq.com" />
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="shortcut icon" type="image/x-icon"
	href="/ringEmployment/EXTERNAL/img/icon1.png">


<!-- CSS STYLESHEET -->
<link rel="stylesheet" href="/ringEmployment/EXTERNAL/css/style.css" type="text/css" media="all" />
<link rel="stylesheet" href="/ringEmployment/EXTERNAL/css/bootstrap.min.css" type="text/css">
<!-- JS -->
<script type="text/javascript" src="/ringEmployment/EXTERNAL/js/jquery-3.3.1.js"></script>
<script type="text/javascript" src="/ringEmployment/EXTERNAL/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/ringEmployment/EXTERNAL/js/fontawesome.js"></script>
<script type="text/javascript" src="/ringEmployment/EXTERNAL/js/companySignin.js"></script>
<script type="text/javascript" src="/ringEmployment/EXTERNAL/js/jsAddress.js"></script>
</head>
<body>
	<div class="signinform">
		<h1>
			Ring聘 <br /> 注册
		</h1>
		<!-- 中心内容 -->
		<div class="container">
			<div class="w3l-form-info">
				<div class="w3_info">
					<h2 align="center">注册</h2>
					<!-- 请求 -->

						<div class="input-group">
							<span><i class="fas fa-user" aria-hidden="true"></i></span> <input
								type="email" id="acc" placeholder="Account(个人邮箱更容易记忆)"
								required="requi">
						</div>

						<div class="input-group">
							<span><i class="fas fa-key" aria-hidden="true"></i></span> <input
								type="password" id="pass"
								placeholder="Password(字母数字下划线，字母开头6-18位)" required="requi">
						</div>

						<div class="input-group">
							<span><i class="fas fa-user" aria-hidden="true"></i></span> <input
								type="text" id="legal" placeholder="Legal representative"
								required="requi">
						</div>

						<div class="input-group">
							<span><i class="fas fa-phone" aria-hidden="true"></i></span> <input
								type="text" id="phone" placeholder="tel-phone" required="requi">
						</div>

						<div class="input-group">
							<select class="form-control" id="cmbProvince" name="cmbProvince"></select>
							<select class="form-control" id="cmbCity" name="cmbCity"></select>
							<select class="form-control" id="cmbArea" name="cmbArea"></select>
						<script type="text/javascript">
							$(document).ready(
									function() {
										addressInit('cmbProvince', 'cmbCity','cmbArea');
									});
						</script>
						</div>
						
						
						<!-- 注册 -->
						<button class="btn btn-primary btn-block" type="submit" id="sub">注册</button>
						
						
						
						
					<div class="form-row bottom">
						<a href="signin" class="forgot">用户账号注册</a> 
						<a onclick="alet()" style="cursor:pointer;" class="forgot">管理员账号</a>
					</div>
					<script type="text/javascript">
						function alet(){
							alert("你没这权力!")
						}
							
					</script>
					<p class="account">
						已有账号? <a href="login">登录</a>
					</p>
				</div>
			</div>
			<!-- //main content -->
		</div>
		<!-- 底部版权提示 -->
		<div class="footer">
			<p>
				&copy; 2021 <a href="index">ringEmployment</a> form. BY: <a
					href="tencent://AddContact/?fromId=45&amp;fromSubId=1&amp;subcmd=all&amp;uin=2356097973&amp;fuin=%20&amp;website=&amp;Site=%E5%9C%A8%E7%BA%BF%E5%AE%A2%E6%9C%8D&amp; Menu=yes"
					target="blank">CJ</a>
			</p>
		</div>
	</div>



</body>

</html>