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
				<li class="nav-item cta cta-colored"><a href="jobs?Page=1"
					class="nav-link">想要一份好工作</a></li>

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
	
					<c:forEach items="${resume}" var="su">
						<div class="col-md-5 ilofggbaninf" style="height: 500px; margin-top: 100px; width: 450px;">
						
							<div id="wrapper" >       
							  <input id="fileUpload" type="file"  name="file" id="picpath"  /><br />
							  <div id="image-holder"> </div>
							  <input id="oldIMG" name="oldIMG" type="hidden" value="${su.img}">
							  
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
						</div>

						<div class="col-md-7 ilofggbaninf">
							<h1>姓名:</h1><h2><input style="text-align:center;width: 200px;height: 100px;font-size: 30px" name="name" id="name" type="text" value="${su.name}"></h2>


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
			<h3>ABOUT ME</h3>
			<c:forEach items="${resume}" var="su">
				<div class="w3l_abtu row">
					<div class="col-md-4 ilofggabt">
						<h6>电话</h6>
						<center>
							<h5><input style="text-align: center" name="phone" id="phone" type="text" value="${su.phone}"></h5>
						</center>
					</div>
					<div class="col-md-4 ilofggabt1">
						<h6>地址</h6>
						<center>
						<script type="text/javascript" src="/ringEmployment/EXTERNAL/js/jsAddress.js"></script>
						
						<c:if test="${su.household != null}">
							<h5><input style="text-align: center" name="household" id="household" type="text" value="${su.household}"></h5>
						</c:if>
						
						<c:if test="${su.household == null }">
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
									<input name="household" id="household" type="hidden" >
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
						
						</center>
					</div>
					<div class="col-md-4 ilofggabt2">
						<h6>邮箱</h6>
						<center>
							<h5><input style="text-align: center" name="email" id="email" type="text" value="${su.email}"></h5>
						</center>
					</div>
					<div class="col-md-4 ilofggabt2">
						<h6>性别</h6>
						<center>
						<c:if test="${su.sex == ''}">
							<center>
								<select name="sex" id="sex" class="form-control">
								  <option value="男">男</option>
								  <option value="女">女</option>
								</select>
							</center>
						</c:if>
						<c:if test="${su.sex != ''}">
							<h5><input style="text-align: center" name="sex" id="sex" type="text" value="${su.sex}"></h5>
						</c:if>
						</center>
					</div>
					<div class="col-md-4 ilofggabt2">
						<h6>生日</h6>
						
						
						
						<center>
						<c:if test="${su.birthday == ''}">
							<input style="text-align: center" type="date" name="birthday" id="birthday" />
						</c:if>
						
						
						
						<c:if test="${su.birthday != ''}">
							<h5><input style="text-align: center" name="birthday" id="birthday" type="text" value="${su.birthday}"></h5>
						</c:if>
						
							
						</center>
						
						
						
					</div>
					<div class="col-md-4 ilofggabt2">
						<h6>政治面貌</h6>
						<center>
						<c:if test="${su.outlook == ''}">
							<center>
								<select name="outlook" id="outlook" class="form-control">
								  <option value="党员">党员</option>
								  <option value="群众">群众</option>
								  <option value="团员">团员</option>
								  <option value="民主党派或无党派人士">民主党派或无党派人士</option>
								</select>
							</center>
						</c:if>
						<c:if test="${su.outlook != ''}">
							<h5><input style="text-align: center" name="outlook" id="outlook" type="text" value="${su.outlook}"></h5>
						</c:if>
						</center>
					</div>
				</div>

			</c:forEach>
		</div>


	</div>
	<!-- /About Us -->



	<!-- Services -->
	<div class="container">
		<div class="services" id="services">
			<h3>详情</h3>
		<c:forEach items="${resume}" var="su">
			<div class="servghjrfghvice">
				<h4>学历</h4>
				<center>
					<h6>学校名称:</h6><input style="text-align: center" name="schoolName" id="schoolName" type="text" value="${su.schoolName}">
					<h6>专业名称:</h6><input style="text-align: center" name="major" id="major" type="text" value="${su.major}">
					
					<h6>学历类型:</h6>
					<c:if test="${su.education == ''}">
						<center>
							<select name="education" id="education" class="form-control">
							  <option value="中专及以下">中专及以下</option>
							  <option value="大专">大专</option>
							  <option value="本科">本科</option>
							  <option value="硕士">硕士</option>
							  <option value="博士">博士</option>
							</select>
						</center>
					</c:if>
					<c:if test="${su.education != ''||su.education != null}">
						<input style="text-align: center" name="education" id="education" type="text" value="${su.education}">
					</c:if>
					
					<h6>毕业时间:</h6>
					<c:if test="${su.edu_time == ''|| su.edu_time == null}">
					
						年<input type="month" name="edu_time" id='edu_time'><br/> 
						    
					</c:if>
					
					<c:if test="${su.edu_time != '' || su.edu_time != null}">
						<input style="text-align: center" name="edu_time" id="edu_time" type="text" value="${su.edu_time}">
					</c:if>
					
					
					
					
					<h6>专业技能:</h6><input style="text-align: center" name="majorKnow" id="majorKnow" type="text" value="${su.majorKnow}">
				</center>
			</div>
			
			<div class="servghjrfghvice">
				<h4>实习经历</h4>
				<center>
					
					<h6>工作时间:</h6><input style="text-align: center" name="position_time" id="position_time" type="text"  value="${su.position_time}" >
					<h6>公司名称:</h6><input style="text-align: center" name="companyName" id="companyName" type="text" value="${su.companyName}">
					<h6>担任岗位:</h6><input style="text-align: center" name="position" id="position" type="text" value="${su.position}">
					
				</center>
			</div>
			
			<div class="servghjrfghvice">

				<h4>技能证书</h4>
				<center><input style="text-align: center" name="certificateBookName" id="certificateBookName" type="text" value="${su.certificateBookName}"></center>

			</div>
			<div class="servghjrfghvice">

				<h4>所获荣誉</h4>
				<center><input style="text-align: center" name="honor" id="honor" type="text" value="${su.honor}"></center>

			</div>
			<div class="servghjrfghvice">

				<h4>自我评价</h4>
				<center><input style="text-align: center" name="evaluation" id="evaluation" type="text" value="${su.evaluation}"></center>
				

			</div>
			
			<div class=" servghjrfghvice">

				<h4>薪资要求</h4>
				<center><input style="text-align: center" name="salary" id="salary" type="text" value="${su.salary}"></center>

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
</body>
</html>