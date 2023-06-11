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
					<li class="nav-item "><a href="index" class="nav-link">首页</a></li>
					<li class="nav-item"><a href="blog" class="nav-link">交流</a></li>
					<li class="nav-item active"><a href="userMy" class="nav-link">个人</a></li>
					<li class="nav-item"><a href="news" class="nav-link">资讯</a></li>
					<li class="nav-item cta cta-colored"><a href="resumes?Page=1" class="nav-link">想要一个好的打工人</a></li>


			</ul>
		</div>
	</div>
	</nav>
	<!-- END nav -->

<form action="updateMy" method="post" enctype="multipart/form-data">
	<!-- banner -->
	<div class="banner" id="home">

		<div class="banner-image-w3layouts">
			<div class="container">
				<div class="row">

					<c:forEach items="${cominfo}" var="com">
						<div class="col-md-5 ilofggbaninf" style="height: 500px; margin-top: 100px; width: 450px;">
						
							<div id="wrapper" >       
							  <input id="fileUpload" type="file"  name="file" id="picpath"  /><br />
							  <div id="image-holder"> </div>
							   <input id="oldIMG" name="oldIMG" type="hidden" value="${com.img}">
							</div>
							
							<script type="text/javascript">
								$("#fileUpload").on('change', function () {
								 
								    if (typeof (FileReader) != "undefined") {
								 
								        var image_holder = $("#image-holder");
								        image_holder.empty();
								 
								        var reader = new FileReader();
								        reader.onload = function (e) {
								            $("<img />", {
								                "src": e.target.result,
								                "class": "img-rounded",
								                "style":"height: 300px; width: 450px;"
								            }).appendTo(image_holder);
								 
								        }
								        image_holder.show();
								        reader.readAsDataURL($(this)[0].files[0]);
								    } else {
								        alert("你的浏览器不支持FileReader.");
								    }
								});
								</script>
							<%-- <img style="height: 500px; margin-top: 100px; width: 450px;"
								src="/ringEmployment/EXTERNAL/img/${su.img}" alt="头像"
								class="img-rounded" /> --%>
								
						</div>

						<div class="col-md-7 ilofggbaninf">
						<center>
							<h2>公司名称:<input type="text" value="${com.companyName}" style="text-align: center;width: 200px;height: 100px;font-size: 30px" name="companyName" id="companyName"></h2>
							<h2>法定代表人:<input type="text" value="${com.legalRep}" style="text-align: center;width: 200px;height: 100px;font-size: 30px" name="legalRep" id="legalRep"></h2>
						</center>
						<center>
							<div class="w3l_but">
								<a href="#service11"
									class="btn btn-lg btn-primary btn-block page-scroll">详情</a>
							</div>
						</center>
							<div class="clearfix"></div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>


	</div>
	
	<!-- Services -->
	<div class="container" id="service11">
		<div class="services" id="services">
			<h3>详情</h3>
		<c:forEach items="${cominfo}" var="com">
			
			<div class="servghjrfghvice">

				<h4>注册资本</h4>
				<center><input type="text" value="${com.capital}" style="text-align: center" name="capital" id="capital"></center>

			</div>
			
			<div class="servghjrfghvice">

				<h4>创办时间</h4>
				<c:if test="${com.incorTime == '' || com.incorTime == null}">
					
					年<input type="month" name="incorTime" id='incorTime'><br/> 
					    
				</c:if>
				
				<c:if test="${com.incorTime != '' || com.incorTime != null}">
					<center><input type="text" value="${com.incorTime}" style="text-align: center" name="incorTime" id="incorTime"></center>
				</c:if>
				
				
			</div>
			
			<div class=" servghjrfghvice">

				<h4>联系方式:</h4>
				<center>邮箱:<input type="text" value="${com.email}" style="text-align: center" name="email" id="email"></center>
				<center>电话:<input type="text" value="${com.phone}" style="text-align: center" name="phone" id="phone"></center>
			</div>
			
			<div class=" servghjrfghvice">

				<h4>办公地址:</h4>
				<script type="text/javascript" src="/ringEmployment/EXTERNAL/js/jsAddress.js"></script>
						
						<c:if test="${com.officeAddress!=null}">
							<h5><input style="text-align:center" name="officeAddress" id="officeAddress" type="text" value="${com.officeAddress}"></h5>
						</c:if>
						
						<c:if test="${com.officeAddress==null}">
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
									
									<input type="hidden" name="address" id="address">
									<input name="officeAddress" id="officeAddress" type="hidden" >
									<script type="text/javascript">
											$(function(){
												province = $("#cmbProvince").val();
												 city = $("#cmbCity").val();
												 area = $("#cmbArea").val();
												 var address = province + ""+ city+""+area;
												 $("#address").val(address)										
													
												$("#cmbProvince").blur(function(){
													 province = $("#cmbProvince").val();
													 city = $("#cmbCity").val();
													 area = $("#cmbArea").val();
													 var address = province + ""+ city+""+area;
													 $("#address").val(address)
												})
												
												$("#cmbCity").blur(function(){
													 province = $("#cmbProvince").val();
													 city = $("#cmbCity").val();
													 area = $("#cmbArea").val();
													 var address = province + ""+ city+""+area;
													 $("#address").val(address)
												})
												$("#cmbArea").blur(function(){
													 province = $("#cmbProvince").val();
													 city = $("#cmbCity").val();
													 area = $("#cmbArea").val();
													 var address = province + ""+ city+""+area;
													 $("#address").val(address)
												})
												 
													 
											})
											
									</script>
							</div>
						</c:if>
						

			</div>
			<div class=" servghjrfghvice">

				<h4>官方网址:</h4>
				<center><input type="text" value="${com.officialWebsite}" style="text-align: center" name="officialWebsite" id="officialWebsite"></a></center>

			</div>
			<br/>
			<br/>
			<center><input type="submit" id="but" class="btn btn-secondary py-3 px-4"></input></center>
</c:forEach>
		</div>
	</div>
</form>
	

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
	<script type="text/javascript" src="/ringEmployment/EXTERNAL/js/moment.min.js"></script>

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