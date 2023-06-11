<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>ring聘</title>

<!-- Meta tags -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="2356097973@qq.com"/>
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="shortcut icon" type="image/x-icon"
	href="/ringEmployment/EXTERNAL/img/icon1.png">


<!-- CSS STYLESHEET -->
<link rel="stylesheet" href="/ringEmployment/EXTERNAL/css/style.css"
	type="text/css" media="all" />
<!-- JS -->
<script type="text/javascript" src="/ringEmployment/EXTERNAL/js/jquery-3.3.1.js"></script>

<script type="text/javascript" src="/ringEmployment/EXTERNAL/js/fontawesome.js"></script>
<script type="text/javascript" src="/ringEmployment/EXTERNAL/js/vue.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

	<link rel="stylesheet" href="/ringEmployment/EXTERNAL/css/animate.css">
	<link rel="stylesheet" href="/ringEmployment/EXTERNAL/css/owl.carousel.min.css">
	<link rel="stylesheet" href="/ringEmployment/EXTERNAL/css/owl.theme.default.min.css">
	<link rel="stylesheet" href="/ringEmployment/EXTERNAL/css/magnific-popup.css">
	<link rel="stylesheet" href="/ringEmployment/EXTERNAL/css/bootstrap-datepicker.css">
	<link rel="stylesheet" href="/ringEmployment/EXTERNAL/css/jquery.timepicker.css">
	<link rel="stylesheet" href="/ringEmployment/EXTERNAL/css/flaticon.css">
	<link rel="stylesheet" href="/ringEmployment/EXTERNAL/css/indexstyle.css">
	

</head>

<body>
	
	<div class="signinform">
		<h1>Ring聘 <br/> 找回账号</h1>
		<!-- 中心内容 -->
		<div class="container">
			<div class="w3l-form-info">
				<div class="w3_info">
					<h2 align="center">找回账号</h2>
					<!-- 请求 -->
					<form id="requi">

						<div class="select-wrap">
							<div class="icon">
								<span class="ion-ios-arrow-down"></span>
							</div>
							<select name="cutype" id="cutype" class="form-control" style="center">
								<option value="公司">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;公&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;司</option>
								<option value="用户">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;用 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;户</option>
							</select>
						</div>



						<div class="input-group">
							<span><i class="fas fa-phone" aria-hidden="true"></i></span> 
							<input type="text" id="phone" placeholder="phone" required="requi">
						</div>
						
						
						
						<button class="btn btn-primary btn-block" id="sub" type="button">找回</button>
					</form>
					
					<p class="account">
						返回登录? <a href="login">登录</a>
					</p>
				</div>
			</div>
			
			<script type="text/javascript">
			$(function(){

				var ph = null;
				var phone = null;
				
				
				$("#phone").blur(function() {
					phone = $("#phone").val();
					ph = /^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/;
					if (ph.test(phone) == false) {
						$("#phone").css("color", "red")
					} else {
						$("#phone").css("color", "green")
					}
				})

				
				
				$("#sub").click(function(){
					var type = $("#cutype").val();
					var phone = $("#phone").val();
					$.post("getAccount",{"phone":phone,"cutype":type},
							function(data){
						if(data=="0"){
							alert("无任何账号绑定此手机号")
						}else{
							alert("此手机绑定账号为:"+ data + "请牢记账号")
							window.location.href="login";
						}
					})
				})
			})
			
			</script>
			<!-- //main content -->
		</div>
		<!-- 底部版权提示 -->
		<div class="footer">
			<p>
				&copy; 2021 <a href="">ringEmployment</a> form. BY: <a
					href="tencent://AddContact/?fromId=45&amp;fromSubId=1&amp;subcmd=all&amp;uin=2356097973&amp;fuin=%20&amp;website=&amp;Site=%E5%9C%A8%E7%BA%BF%E5%AE%A2%E6%9C%8D&amp; Menu=yes"
					target="blank">CJ</a>
			</p>
		</div>
	</div>



</body>

</html>