<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>ring聘</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Meta tags -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="2356097973@qq.com" />
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="shortcut icon" type="image/x-icon"
	href="/ringEmployment/EXTERNAL/img/icon1.png">
	
	<script src="/ringEmployment/EXTERNAL/js/jquery-3.3.1.js"></script>
	
	
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
	<!-- 导航 -->
	<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
		<div class="container">
			<a class="navbar-brand" href="index">Ring聘.</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="oi oi-menu"></span> 菜单
			</button>

			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a href="index" class="nav-link">首页</a></li>
					<li class="nav-item"><a href="blog" class="nav-link">交流</a></li>
					<li class="nav-item"><a href="userMy" class="nav-link">个人</a></li>
					<li class="nav-item"><a href="news" class="nav-link">资讯</a></li>
					<li class="nav-item cta mr-md-1"><a href="new-postjob" class="nav-link">发布工作</a></li>
					<li class="nav-item cta cta-colored"><a href="resumes?Page=1" class="nav-link">想要一个好的打工人</a></li>

				</ul>
			</div>
		</div>
	</nav>
	<!-- END nav -->
	
	<div class="hero-wrap js-fullheight img" style="background-image: url(/ringEmployment/EXTERNAL/img/bg_1.jpg);">
		<div class="overlay"></div>
		<div class="">
			<div class="row d-md-flex no-gutters slider-text js-fullheight align-items-center justify-content-center">
				<div class="col-md-10 d-flex align-items-center ">
					<div class="text w-100 text-center">
						<span class="subheading mb-2">喜欢你的打工人吗？成千上万的人在找你！</span>
						<h1 class="mb-4"><span class="number" data-number="
						<c:out value="${Resumecount}" default="0" />"></span>个人都在这等你!</h1>
						<p class="mb-4">妳的形象价值百万。</p>
						<p><a href="tencent://AddContact/?fromId=45&amp;fromSubId=1&amp;subcmd=all&amp;uin=2356097973&amp;fuin=%20&amp;website=&amp;Site=%E5%9C%A8%E7%BA%BF%E5%AE%A2%E6%9C%8D&amp; Menu=yes" class="btn btn-primary">联系我们</a> 
						<a href="resumes?Page=1" class="btn btn-secondary">搜索简历</a></p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<section class=" ftco-no-pt ftco-search-wrap bg-secondary">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="ftco-search d-flex justify-content-center text-center">
						<div class="row">
							<div class="col-md-12 nav-link-wrap">
								<div class="nav nav-pills text-center" id="v-pills-tab" role="tablist" aria-orientation="vertical">
									<a class="nav-link active mr-md-1" id="v-pills-1-tab" data-toggle="pill" href="#v-pills-1" role="tab" aria-controls="v-pills-1" aria-selected="true">找一个打工人</a>

								</div>
							</div>
							<div class="col-md-12 tab-wrap">
								
								<div class="tab-content p-4" id="v-pills-tabContent">

									<div class="tab-pane fade show active" id="v-pills-1" role="tabpanel" aria-labelledby="v-pills-nextgen-tab">
										<form action="whatJob" class="search-job">
											<div class="row">
												<div class="col-md">
													<div class="form-group">
														<div class="form-field">
															<div class="icon"><span class="icon-briefcase"></span></div>
															<input type="text" id="major"  class="form-control" placeholder="例如. 软件工程">
														</div>
													</div>
												</div>
												<div class="col-md">
													<div class="form-group">
														<div class="form-field">
															<div class="select-wrap">
																<div class="icon"><span class="ion-ios-arrow-down"></span></div>
																<select name="education" id="education" class="form-control">
																	<option value="中专">中 &nbsp;&nbsp;专</option>
																	<option value="大专">大 &nbsp;&nbsp;专</option>
																	<option value="本科">本 &nbsp;&nbsp;科</option>
																	<option value="博士">博 &nbsp;&nbsp;士</option>
																</select>
															</div>
														</div>
													</div>
												</div>
												<div class="col-md">
													<div class="form-group">
														<div class="form-field">
															<div class="icon"><span class="icon-map-marker"></span></div>
															<input type="text" id="schoolName" class="form-control" placeholder="毕业学校">
														</div>
													</div>
												</div>
												<div class="col-md">
													<div class="form-group">
														<div class="form-field">
															<button type="button" id="searchResume" class="form-control btn btn-primary">搜索</button>
														</div>
													</div>
												</div>
												
												<script type="text/javascript">
														$("#searchResume").click(function(){
															var major = $("#major").val();
															var education = $("#education").val();
															var schoolName = $("#schoolName").val();
															$.ajax(
																	{async:false,
													                url:"isBoolean",
													                type:"post",
													                data: {"major":major,"education":education,"schoolName":schoolName},
													                success: function (data) {
													                	if(data=="true"){window.location.href="whatResume?Page=1";}
													               },
													                datatype: 'json'})
														})
												</script>
											</div>
										</form>
									</div>
									

								</div>
							</div>
						</div>
					</div>
					<div class="text-center mt-4 popular-search">
						<p>
							<span>查看热搜:</span>
							<a  id="hot1">软件工程</a>
							<a  id="hot2">UI</a>
							<a  id="hot3">大专</a>
							<a  id="hot4">兰州新华</a>
						</p>
					</div>
				</div>
			</div>
		</div>
		<br>
		<br>
	</section>


	<section class="ftco-section ftco-no-pt services-section">
	
		<div class="container">
			<div class="row d-flex">
				<div class="col-md-3 d-flex align-self-stretch">
					<div class="media block-6 services d-block text-center">
						<div class="icon"><span class="flaticon-resume"></span></div>
						<div class="media-body">
							<h3 class="heading mb-3">搜索数以百万计的打工人</h3>
							<p>您的选择改变他们的生活。</p>
						</div>
					</div>      
				</div> 
				
				<div class="col-md-3 d-flex align-self-stretch ">
					<div class="media block-6 services d-block text-center">
						<div class="icon"><span class="flaticon-team"></span></div>
						<div class="media-body">
							<h3 class="heading mb-3">为公司挑选最好的团队</h3>
							<p>最好的团队才能发挥出最大的效能。</p>
						</div>
					</div>    
				</div>
			
				<div class="col-md-3 d-flex align-self-stretch ">
					<div class="media block-6 services d-block text-center">
						<div class="icon"><span class="flaticon-career"></span></div>
						<div class="media-body">
							<h3 class="heading mb-3">顶尖的打工人</h3>
							<p>为自己的开局挑选成最好的开局。</p>
						</div>
					</div>      
				</div>
				
				<div class="col-md-3 d-flex align-self-stretch ">
					<div class="media block-6 services d-block text-center">
						<div class="icon"><span class="flaticon-employees"></span></div>
						<div class="media-body">
							<h3 class="heading mb-3">找高端的打工人</h3>
							<p>好的打工人会为您每天赚一辆奔驰。</p>
						</div>
					</div>      
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section ftco-counter ftco-category">
		<div class="container">
			<div class="row mb-5 justify-content-center">
				<div class="col-md-7 heading-section text-center ftco-animate">
					<span class="subheading">工作类别</span>
					<h2 class="mb-0">按类别浏览</h2>
				</div>
			</div>
		</div>
		<div class="container ftco-animate row" style="margin: 0 auto;">
						
							<div class="col-md-4 top-category text-center">
								<span class="icon flaticon-contact"></span>
								<h3><a href="resumes?Page=1">后端</a></h3>
								<p><span class="number" data-number="999"></span> <span>职位</span></p>
							</div>
					
							<div class="col-md-4 top-category text-center"  >
								<span class="icon flaticon-mortarboard"></span>
								<h3><a href="resumes?Page=1">数据库</a></h3>
								<p><span class="number" data-number="999"></span> <span>职位</span></p>
							</div>
						
							<div class="col-md-4 top-category text-center">
								<span class="icon flaticon-idea"></span>
								<h3><a href="resumes?Page=1">前端</a></h3>
								<p><span class="number" data-number="999"></span> <span>职位</span></p>
							</div>
							
						
		</div>
	</section>

	<section class="ftco-section bg-light">
		<div class="container">
			<div class="row justify-content-center pb-3">
				<div class="col-md-12 heading-section ftco-animate">
					<span class="subheading subheading-2">最近新增的打工人</span>
					<h2 class="mb-4">本周精选打工人</h2>
				</div>
			</div>
			<div class="row">
			
			<c:forEach items="${position}" var="resume">
				<div class="col-md-12 ftco-animate">
				
					<div class="job-post-item p-3 p-md-4 d-block d-lg-flex align-items-center">
							<div class="one-third d-flex align-items-start mb-4 mb-md-0">
								<div class="job-wrap">
									<div class="job-post-item-header ">
										<a href="Others?id=${resume.id}">${resume.name}</a>
										<h2 class="mr-3 text-black">${resume.major}</h2>
									</div>
							
									<div class="job-post-item-body d-block d-md-flex">
										<div class="mr-3"><span class="fa fa-ofvcard "></span><a href="">${resume.birthday} , Bir.</a></div>
										<div class="mr-3"><span class="fa fa-map-marker"></span> <span>${resume.household} , China.</span></div>
										<div><a href="" class="link bg-primary">${resume.majorKnow}</a></div>
									</div>
								</div>
								<div class="price-rate mt-4">
									<span>每月</span>
									<span class="rate">${resume.salary}</span>
								</div>
							</div>
						
						<div class="one-forth d-flex align-items-center mt-4 md-md-0">
							<div class="d-flex ml-lg-auto">
								<a href="" class="icon text-center d-flex justify-content-center align-items-center icon mr-2">
									<span class="fa fa-heart"></span>
								</a>
								<a href="iWhat?id=${resume.id}" class="btn btn-primary py-2">联系他/她</a>
							</div>
						</div>
					</div>
				</div><!-- end -->
			
			</c:forEach>
			
			
				
			</div>
		</div>
	</div>
</section>

<section class="py-5 ftco-intro">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-8 text-center">
				<h2>让我们为您找到最适合您的打工人</h2>
				<p>老板说的就是真理，老板骂妳那叫在理。工资不涨那叫真理，迟到扣薪那叫在理。到底这是有没有有理，世人自有世人道理</p>
				<p><a href="resumes?Page=1" class="btn btn-secondary py-3 px-4">找到他</a></p>
			</div>
		</div>
	</div>
</section>

<section class="ftco-section testimony-section img" style="background-image: url(/ringEmployment/EXTERNAL/img/bg_2.jpg);">
	<div class="overlay"></div>
	<div class="container">
		<div class="row justify-content-center mb-4">
			<div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
				<span class="subheading">感言</span>
				<h2 class="mb-4">优秀打工人</h2>
				<!-- 固定 -->
			</div>
		</div>
		<div class="row ftco-animate">
			
					<div class="item col-md-4">
						<div class="testimony-wrap py-4">
							<div class="text">
								<p class="mb-4">张小龙毕业于华中科技大学电信系，分别获得学士、硕士学位。曾开发国产电子邮件客户端——Foxmail，加盟腾讯公司后开发腾讯微信，被誉为“微信之父”，被《华尔街日报》评为“2012中国创新人物”。主要负责腾讯公司广州研发部的管理工作，同时参与腾讯公司重大创新项目的管理和评审工作。</p>
								<div class="d-flex align-items-center">
									<div class="user-img" style="background-image: url(/ringEmployment/EXTERNAL/img/zxl.jpg)"></div>
									<div class="pl-3">
										<p class="name">张小龙</p>
										<span class="position">腾讯副总裁、微信创始人</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="item col-md-4">
						<div class="testimony-wrap py-4">
							<div class="text">
								<p class="mb-4">2014年10月30日，库克在《商业周刊》网站发表文章明确表明自己为同性恋者。2015年3月，蒂姆·库克已计划捐献其全部财富。按库克持有的苹果股份计算，他的净资产为1.2亿美元。2019年3月，在被特朗普称作“蒂姆-苹果”之后，蒂姆-库克在推特上正式将自己“改名”为蒂姆-苹果</p>
								<div class="d-flex align-items-center">
									<div class="user-img" style="background-image: url(/ringEmployment/EXTERNAL/img/dmkk.jpg)"></div>
									<div class="pl-3">
										<p class="name">蒂姆·库克</p>
										<span class="position">苹果公司现任首席执行官</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="item col-md-4">
						<div class="testimony-wrap py-4">
							<div class="text">
								<p class="mb-4">2005年加盟腾讯公司，出任公司首席战略投资官，负责公司战略、投资、并购和投资者关系方面的工作；2006年2月荣任腾讯公司总裁，帮助董事会主席兼首席执行官马化腾负责公司的日常管理和运营。2007年3月，被任命为执行董事。<br><br></p>
								<div class="d-flex align-items-center">
									<div class="user-img" style="background-image: url(/ringEmployment/EXTERNAL/img/lcp.jpg)"></div>
									<div class="pl-3">
										<p class="name">刘炽平</p>
										<span class="position">腾讯公司执行董事、总裁</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					
				</div>
		</div>
		
		
</section>


<section class="ftco-section bg-light">
	<div class="container">
		<div class="row justify-content-center mb-5 pb-3">
			<div class="col-md-7 heading-section text-center ftco-animate">
				<span class="subheading">最近的Blog</span>
				<h2><span>我们的</span> Blog</h2>
			</div>
		</div>
		<div class="row d-flex">
		
		<c:forEach items="${messa}" var="mess">
			<div class="col-md-6 col-lg-3 d-flex ftco-animate">
				<div class="blog-entry align-self-stretch">
					<div class="text">
						<div class="meta mb-2">
							<div><p >${mess.time}</p></div>
							<div><a href="userMy">${mess.name}</a></div>
						</div>
						<p>${mess.content}</p>
					</div>
				</div>
			</div>
		</c:forEach>
		
		</div>
	</div>
</section>

<!-- 底部 -->
<footer class="ftco-footer ftco-section">
	<div class="container">
		<div class="row mb-5">
			<div class="col-md">
				<div class="ftco-footer-widget mb-4">
					<h2 class="ftco-heading-2">Ring聘。</h2>
					<p>机会对于任何人都是公平的，它在我们身边的时候，不是打扮的花枝招展，而是普普通通的，根本就不起眼。看起来耀眼的机会不是机会，是陷阱;真正的机会最初都是朴素的，只有经过主动与勤奋，它才变得格外绚烂。</p>
					<ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-3">
						<li class="ftco-animate"><a href="http://weixin.com"><span class="fa fa-weixin"></span></a></li>
						<li class="ftco-animate"><a href="http://qq.com"><span class="fa fa-qq"></span></a></li>
						<li class="ftco-animate"><a href="http://github.com"><span class="fa fa-github"></span></a></li>
					</ul>
				</div>
			</div>
		<div class="col-md">
				<div class="ftco-footer-widget mb-4">
					<h2 class="ftco-heading-2">公司</h2>
					<ul class="list-unstyled">
						<li><a href="resumes?Page=1" class="pb-1 d-block">查看简历</a></li>
						<li><a href="postjob" class="pb-1 d-block">发布新工作</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md">
				<div class="ftco-footer-widget mb-4 ml-md-4">
					<h2 class="ftco-heading-2">打工人</h2>
					<ul class="list-unstyled">
						<li><a href="" class="pb-1 d-block">查看工作</a></li>
						<li><a href="" class="pb-1 d-block">修改简历</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md">
				<div class="ftco-footer-widget mb-4 ml-md-4">
					<h2 class="ftco-heading-2">账户</h2>
					<ul class="list-unstyled">
						<li><a href="userMy" class="pb-1 d-block">我的首页</a></li>
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
							<li><span class="icon fa fa-map-marker"></span><span class="text">208 宿舍. 兰州新华互联网学校, China</span></li>
							<li><a href="#"><span class="icon fa fa-phone"></span><span class="text">+198 9614 4660</span></a></li>
							<li><a href="2356097973@qq.com"><span class="icon fa fa-paper-plane"></span><span class="text">2356097973@qq.com</span></a></li>
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
	<div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>

	
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

	<script type="text/javascript">
	$(function(){
		var i = 0;
		$(".ftco-animate").waypoint( function( direction ) {

			if( direction === 'down' && !$(this.element).hasClass('ftco-animated') ) {
				
				i++;

				$(this.element).addClass('item-animate');
				setTimeout(function(){

					$('body .ftco-animate.item-animate').each(function(k){
						var el = $(this);
						setTimeout( function () {
							var effect = el.data('animate-effect');
							if ( effect === 'fadeIn') {
								el.addClass('fadeIn ftco-animated');
							} else if ( effect === 'fadeInLeft') {
								el.addClass('fadeInLeft ftco-animated');
							} else if ( effect === 'fadeInRight') {
								el.addClass('fadeInRight ftco-animated');
							} else {
								el.addClass('fadeInUp ftco-animated');
							}
							el.removeClass('item-animate');
						},  k * 50, 'easeInOutExpo' );
					});
					
				}, 100);
				
			}

		} , { offset: '95%' } );
	})
	
	</script>
</body>
</html>