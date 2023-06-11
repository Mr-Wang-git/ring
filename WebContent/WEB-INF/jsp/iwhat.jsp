<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	
	
<script src="/ringEmployment/EXTERNAL/js/jquery-3.3.1.js"></script>
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

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
<link rel="stylesheet" href="/ringEmployment/EXTERNAL/css/flaticon.css">
<link rel="stylesheet"
	href="/ringEmployment/EXTERNAL/css/indexstyle.css">
</head>
<body>
		<!-- 导航 -->
	<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
		<div class="container">
			<a class="navbar-brand" href="index">Ring聘.</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="oi oi-menu"></span> 菜单
			</button>

			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item "><a href="index" class="nav-link">首页</a></li>
					<li class="nav-item active"><a href="blog" class="nav-link">交流</a></li>
					<li class="nav-item"><a href="userMy" class="nav-link">个人</a></li>
					<li class="nav-item"><a href="news" class="nav-link">资讯</a></li>

				</ul>
			</div>
		</div>
	</nav>
	<!-- END nav -->
	
<section class="hero-wrap hero-wrap-2"
		style="background-image: url('ringEmployment/EXTERNAL/img/bg_1.jpg');"
		data-stellar-background-ratio="0.5">
		
		
		
	<div class="overlay"></div>
	
	<div class="container">
		<div class="row no-gutters slider-text align-items-end">
			<div class="col-md-12 ftco-animate mb-5">
				<p class="breadcrumbs mb-0">
					<span class="mr-3">
					<a href="index">首页
					<i class="fa fa-chevron-right">
					</i>
					</a>
					</span> 
					
					<span>交流
					<i class="fa fa-chevron-right"></i>
					</span>
				</p>
				<h1 class="mb-3 bread">模糊谈判</h1>
			</div>
		</div>
	</div>
	</section>

<section class="ftco-section bg-light">

	<div class="container">
		
		<div class="row d-flex">
		
		<c:forEach items="${mess}" var="mess">
		
				<div class="col-md-12 col-lg-6 d-flex ftco-animate">
					<div class="blog-entry align-self-stretch">
						<div class="text">
							<h3 class="heading">
								对象名:<a href="Others?id=${mess.user_id}"><c:if test="${name!=null}">${name}</c:if></a>
							</h3>
							<p>${mess.content}</p>
						</div>
					</div>
				</div>
				
			</c:forEach>
		</div>
	</div>
	
	
	</section>

	<section> 
		<center>
	
				<div class="col-md-12">
					<h3>留言</h3>
				</div>
	
				<div class="col-md-12  ">
					<textarea name="content" class="form-control" id="content" cols="30"
						rows="4"></textarea>
				</div>
		<br/>
				<div class="col-md-12">
					<input type="button" value="留言" id="but"
						class="btn btn-primary  py-2 px-5">
				</div>
	<br/>
	<br/>
	
		</center>
            
           
            
	</section>
	<script type="text/javascript">
		$(function(){
			$("#but").click(function(){
				var content = $("#content").val();
				if(content==null){
					alert("请输入字符")
				}else{
					$.post("postMessage",{"content":content},function(data){
						if(data=="true"){
							window.location.href="iWhat"
						}
					})
				}
			})
		})
	</script>


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
						<li class="ftco-animate"><a href="weixin.com"><span
								class="fa fa-weixin"></span></a></li>
						<li class="ftco-animate"><a href="qq.com"><span
								class="fa fa-qq"></span></a></li>
						<li class="ftco-animate"><a href="github.com"><span
								class="fa fa-github"></span></a></li>
					</ul>
				</div>
			</div>
			<div class="col-md">
				<div class="ftco-footer-widget mb-4">
					<h2 class="ftco-heading-2">公司</h2>
					<ul class="list-unstyled">
						<li><a href="resumes" class="pb-1 d-block">查看简历</a></li>
						<li><a href="poatjob" class="pb-1 d-block">发布新工作</a></li>
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
	<div class="container-fluid bg-darken px-0 py-5">
		<div class="row">
			<div class="col-md-12 text-center">
				<p>
					&copy; 2021 <a href="index">RingEmployment</a> form. BY: <a
						href="tencent://AddContact/?fromId=45&amp;fromSubId=1&amp;subcmd=all&amp;uin=2356097973&amp;fuin=%20&amp;website=&amp;Site=%E5%9C%A8%E7%BA%BF%E5%AE%A2%E6%9C%8D&amp; Menu=yes"
						target="blank">CJ</a>
				</p>
			</div>
		</div>
	</div>
	</footer>



	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
		<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
			stroke-width="4" stroke="#eeeeee" />
		<circle class="path" cx="24" cy="24" r="22" fill="none"
			stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>


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

</body>
</html>