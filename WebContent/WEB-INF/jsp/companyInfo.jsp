<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ring聘</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords"
	content="Memoir a Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="2356097973@qq.com" />
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="shortcut icon" type="image/x-icon"
	href="/ringEmployment/EXTERNAL/img/icon1.png">


<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="/ringEmployment/EXTERNAL/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" media="all">
<link href="/ringEmployment/EXTERNAL/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" media="all">
<link href="/ringEmployment/EXTERNAL/css/font-awesome.css"
	rel="stylesheet" type="text/css">
<link href="/ringEmployment/EXTERNAL/css/UserMystyle.css"
	rel="stylesheet" type="text/css" media="all" />
<link href="///fonts.googleapis.com/css?family=Open+Sans"
	rel="stylesheet">
<link href="///fonts.googleapis.com/css?family=Roboto+Condensed"
	rel="stylesheet">
<link href="///fonts.googleapis.com/css?family=Dancing+Script"
	rel="stylesheet">
<link rel="stylesheet"
	href="/ringEmployment/EXTERNAL/css/indexstyle.css">
<link rel="stylesheet" href="/ringEmployment/EXTERNAL/css/animate.css">
<link rel="stylesheet"
	href="/ringEmployment/EXTERNAL/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="/ringEmployment/EXTERNAL/css/owl.theme.default.min.css">
<link rel="stylesheet"
	href="/ringEmployment/EXTERNAL/css/magnific-popup.css">
<link rel="stylesheet"
	href="/ringEmployment/EXTERNAL/css/bootstrap-datepicker.css">
<link rel="stylesheet"
	href="/ringEmployment/EXTERNAL/css/jquery.timepicker.css">


<!-- Supportive-JavaScript -->
<script src="/ringEmployment/EXTERNAL/js/modernizr.js"></script>
<script type="text/javascript"
	src="/ringEmployment/EXTERNAL/js/jquery-3.3.1.js"></script>
<!-- //Supportive-JavaScript -->

</head>
<body>
	<!-- 导航 -->
	<nav
		class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
		id="ftco-navbar">
	<div class="container">
		<a class="navbar-brand" href="index">Ring聘.</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#ftco-nav" aria-controls="ftco-nav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="oi oi-menu"></span> 菜单
		</button>

		<div class="collapse navbar-collapse" id="ftco-nav">
			<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a href="index" class="nav-link">首页</a></li>
					<li class="nav-item"><a href="blog" class="nav-link">交流</a></li>
					<li class="nav-item"><a href="userMy" class="nav-link">个人</a></li>
					<li class="nav-item"><a href="news" class="nav-link">资讯</a></li>
					<li class="nav-item cta cta-colored"><a href="jobs" class="nav-link">想要一份好工作</a></li>


			</ul>
		</div>
	</div>
	</nav>
	<!-- END nav -->


	<!-- banner -->
	<div class="banner" id="home">

		<div class="banner-image-w3layouts">
			<div class="container">
				<div class="row">

					<c:forEach items="${cominfo}" var="com">
						<div class="col-md-5 ">
							<img style="height: 500px; margin-top: 100px; width: 450px;"
								src="/ringEmployment/EXTERNAL/img/${com.img}" alt="头像"
								class="img-rounded" />
						</div>

						<div class="col-md-7 ilofggbaninf">
						<center>
							<h2>公司名称:${com.companyName}</h2>
							<h2>法定代表人:${com.legalRep}</h2>
						</center>
						<center>
							<div class="w3l_but">
								<a href="#service11"
									class="btn btn-lg btn-primary btn-block page-scroll">详情</a>
							</div>
							<div class=" w3l_but1">
								<a href="#about"
									class="btn btn-lg btn-primary btn-block page-scroll">基本资料</a>
							</div>
						</center>
							<div class="clearfix"></div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>


	</div>
	<!-- //banner -->
	<!---728x90--->
	<!-- About Us -->
	<div class="aboutus" id="about">
		<div class="container">
			<h3>资料</h3>
			<c:forEach items="${cominfo}" var="com">
				<div class="w3l_abtu row">
					<div class="col-md-4 ilofggabt">
						<h6>电话</h6>
						<center>
							<a style="color: black" href=""><h5>${com.phone}</h5></a>
						</center>
					</div>
					<div class="col-md-4 ilofggabt1">
						<h6>地址</h6>
						<center>
							<a style="color: black" href=""><h5>${com.officeAddress}</h5></a>
						</center>
					</div>
					<div class="col-md-4 ilofggabt2">
						<h6>邮箱</h6>
						<center>
							<a style="color: black" href=""><h5>${com.email}</h5></a>
						</center>
					</div>
				</div>
				<center>
					${com.companyName}是一家创办于${com.incorTime}的企业，公司法定代表人为:${com.legalRep},公司地址:${com.officeAddress}
				</center>

			</c:forEach>
		</div>


	</div>
	<!-- /About Us -->


	<!-- Services -->
	<div class="container" id="service11">
		<div class="services" id="services">
			<h3>详情</h3>
		<c:forEach items="${cominfo}" var="com">
			<div class="servghjrfghvice">
				<h4>企业名称：</h4>
				<center>${com.companyName}</center>
			</div>
			
			<div class="servghjrfghvice">
				<h4>法定代表人:</h4>
				<center>
					${com.legalRep}
				</center>
			</div>
			
			<div class="servghjrfghvice">

				<h4>注册资本</h4>
				<center>${com.capital}￥</center>

			</div>
			<div class="servghjrfghvice">

				<h4>创办时间</h4>
				<center>${com.incorTime}</center>

			</div>
			<div class=" servghjrfghvice">

				<h4>联系方式:</h4>
				<center>邮箱:${com.email}</center>
				<center>电话:${com.phone}</center>
			</div>
			
			<div class=" servghjrfghvice">

				<h4>办公地址:</h4>
				<center>${com.officeAddress}</center>

			</div>
			<div class=" servghjrfghvice">

				<h4>官方网址:</h4>
				<center><a href="https://${com.officialWebsite}">官网</a></center>

			</div>
			
</c:forEach>
		</div>
	</div>

	<!-- /Services -->
	<!---728x90--->

	<!-- 底部 -->
	<footer class="ftco-footer ftco-section">
	<div class="container">
		<div class="row mb-5">
			<div class="col-md">
				<div class="ftco-footer-widget mb-4">
					<h2 class="ftco-heading-2">Ring聘。</h2>
					<p>机会对于任何人都是公平的，它在我们身边的时候，不是打扮的花枝招展，而是普普通通的，根本就不起眼。看起来耀眼的机会不是机会，是陷阱;真正的机会最初都是朴素的，只有经过主动与勤奋，它才变得格外绚烂。</p>
					<ul
						class="ftco-footer-social list-unstyled float-md-left float-lft mt-3">
						<li class="ftco-animate"><a href="https://weixin.com"><span
								class="fa fa-weixin"></span></a></li>
						<li class="ftco-animate"><a href="https://qq.com"><span
								class="fa fa-qq"></span></a></li>
						<li class="ftco-animate"><a href="https://github.com"><span
								class="fa fa-github"></span></a></li>
					</ul>
				</div>
			</div>
			<div class="col-md">
				<div class="ftco-footer-widget mb-4">
					<h2 class="ftco-heading-2">公司</h2>
					<ul class="list-unstyled">
						<li><a href="resumes" class="pb-1 d-block">查看简历</a></li>
						<li><a href="postjob" class="pb-1 d-block">发布新工作</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md">
				<div class="ftco-footer-widget mb-4 ml-md-4">
					<h2 class="ftco-heading-2">打工人</h2>
					<ul class="list-unstyled">
						<li><a href="jobs" class="pb-1 d-block">查看工作</a></li>
						<li><a href="updateresume" class="pb-1 d-block">修改简历</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md">
				<div class="ftco-footer-widget mb-4 ml-md-4">
					<h2 class="ftco-heading-2">账户</h2>
					<ul class="list-unstyled">
						<li><a href="usermy" class="pb-1 d-block">我的首页</a></li>
						<li><a href="../login" class="pb-1 d-block">登录</a></li>
						<li><a href="../signin" class="pb-1 d-block">注册</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md">
				<div class="ftco-footer-widget mb-4">
					<h2 class="ftco-heading-2">需要帮助?</h2>
					<div class="block-23 mb-3">
						<ul>
							<li><span class="icon fa fa-map-marker"></span><span
								class="text">208 宿舍. 兰州新华互联网学校, China</span></li>
							<li><a href="#"><span class="icon fa fa-phone"></span><span
									class="text">+198 9614 4660</span></a></li>
							<li><a href="2356097973@qq.com"><span
									class="icon fa fa-paper-plane"></span><span class="text">2356097973@qq.com</span></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

	</footer>

	<script src="/ringEmployment/EXTERNAL/js/jquery.easing.min.js"></script>
	<script src="/ringEmployment/EXTERNAL/js/move-top.js"></script>
	<script src="/ringEmployment/EXTERNAL/js/bootstrap.min.js"></script>
	<script src="/ringEmployment/EXTERNAL/js/grayscale.js"></script>
	<script src="/ringEmployment/EXTERNAL/js/SmoothScroll.min.js"></script>

	<script src="/ringEmployment/EXTERNAL/js/jquery-migrate-3.0.1.min.js"></script>
	<script src="/ringEmployment/EXTERNAL/js/popper.min.js"></script>
	<script src="/ringEmployment/EXTERNAL/js/bootstrap.min.js"></script>
	<script src="/ringEmployment/EXTERNAL/js/jquery.easing.1.3.js"></script>
	<script src="/ringEmployment/EXTERNAL/js/jquery.waypoints.min.js"></script>
	<script src="/ringEmployment/EXTERNAL/js/jquery.stellar.min.js"></script>
	<script src="/ringEmployment/EXTERNAL/js/owl.carousel.min.js"></script>
	<script src="/ringEmployment/EXTERNAL/js/jquery.magnific-popup.min.js"></script>
	<script src="/ringEmployment/EXTERNAL/js/jquery.animateNumber.min.js"></script>
	<script src="/ringEmployment/EXTERNAL/js/scrollax.min.js"></script>
	<script src="/ringEmployment/EXTERNAL/js/main.js"></script>

	<!-- Tour-Locations-JavaScript -->
	<script src="/ringEmployment/EXTERNAL/js/classie.js"></script>
	<script src="/ringEmployment/EXTERNAL/js/helper.js"></script>
	<script src="/ringEmployment/EXTERNAL/js/grid3d.js"></script>

	<!-- Top Hover-JS -->
	<script type="text/javascript">
		$(document).ready(function() {
			$().UItoTop({
				easingType : 'easeOutQuart'
			});

		});
	</script>
	<script type="text/javascript">
		$(function() {
			var i = 0;
			$(".ftco-animate")
					.waypoint(
							function(direction) {

								if (direction === 'down'
										&& !$(this.element).hasClass(
												'ftco-animated')) {

									i++;

									$(this.element).addClass('item-animate');
									setTimeout(
											function() {

												$(
														'body .ftco-animate.item-animate')
														.each(
																function(k) {
																	var el = $(this);
																	setTimeout(
																			function() {
																				var effect = el
																						.data('animate-effect');
																				if (effect === 'fadeIn') {
																					el
																							.addClass('fadeIn ftco-animated');
																				} else if (effect === 'fadeInLeft') {
																					el
																							.addClass('fadeInLeft ftco-animated');
																				} else if (effect === 'fadeInRight') {
																					el
																							.addClass('fadeInRight ftco-animated');
																				} else {
																					el
																							.addClass('fadeInUp ftco-animated');
																				}
																				el
																						.removeClass('item-animate');
																			},
																			k * 50,
																			'easeInOutExpo');
																});

											}, 100);

								}

							}, {
								offset : '95%'
							});
		})
	</script>
	<!-- //here ends scrolling icon -->
	<!-- smooth scrolling -->

	<!-- scrolling script -->

	<!-- /Top Hover-JS -->
</body>
</html>