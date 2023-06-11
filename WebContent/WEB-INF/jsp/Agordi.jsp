<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>

<script src="/ringEmployment/EXTERNAL/js/jquery-3.3.1.min.js"></script>
<!-- https://jquery.com/download/ -->

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Admin 设置</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:400,700">
<!-- https://fonts.google.com/specimen/Roboto -->
<link rel="stylesheet"
	href="/ringEmployment/EXTERNAL/css/fontawesome.min.css">
<!-- https://fontawesome.com/ -->
<link rel="stylesheet"
	href="/ringEmployment/EXTERNAL/css/bootstrap.min.css">
<!-- https://getbootstrap.com/ -->
<link rel="stylesheet"
	href="/ringEmployment/EXTERNAL/css/templatemo-style.css">
<!--
	Product Admin CSS Template
	https://templatemo.com/tm-524-product-admin
	-->
</head>

<body id="reportsPage">
	<div class="" id="home">
		<nav class="navbar navbar-expand-xl">
		<div class="container h-100">
			<a class="navbar-brand" href="index.html">
				<h1 class="tm-site-title mb-0">Ring. Admin</h1>
			</a>
			<button class="navbar-toggler ml-auto mr-0" type="button"
				data-toggle="collapse" data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<i class="fas fa-bars tm-nav-icon"></i>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mx-auto h-100">
					<li class="nav-item"><a class="nav-link "
						href="adminLoad"> <i class="fas fa-tachometer-alt"></i> 首页 <span
							class="sr-only">(current)</span>
					</a></li>

					<li class="nav-item"><a class="nav-link" href="userTable">
							<i class="far fa-user"></i> 用户
					</a></li>

					<li class="nav-item"><a class="nav-link" href="companyTable">
							<i class="far fa-user"></i> 公司
					</a></li>
					
					<li class="nav-item"><a class="nav-link active" href="Agordi">
							<i class="fa fa-cog"></i> 设置
					</a></li>
					
					
				</ul>
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link d-block"
						href="adminlogin"> ${adminAccount}, <b>Logout</b>
					</a></li>
				</ul>
			</div>
		</div>

		</nav>
		<div class="container">
			<div class="row">
				<div class="col">
					<p class="text-white mt-5 mb-5">
						Welcome back, <b>${adminAccount}</b>
					</p>
				</div>
			</div>
			<!-- row -->
			<div class="row tm-content-row">
				<div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 tm-block-col">
					<div
						class="tm-bg-primary-dark tm-block tm-block-taller tm-block-overflow">
						<h2 class="tm-block-title">所有信息</h2>
						<center>
							<table class="table">
								<thead>
									<tr>
										<th scope="col">用户数</th>
										<th scope="col">公司数</th>
										<th scope="col">短语数</th>
										<th scope="col">交流数</th>
										<th scope="col">资讯数</th>
										<th scope="col">简历数</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td style="height: 130px; font-size: 20px"><b>${sum1}</b></td>
										<td style="height: 130px; font-size: 20px"><b>${sum2}</b></td>
										<td style="height: 130px; font-size: 20px"><b>${sum3}</b></td>
										<td style="height: 130px; font-size: 20px"><b>${sum4}</b></td>
										<td style="height: 130px; font-size: 20px"><b>${sum5}</b></td>
										<td style="height: 130px; font-size: 20px"><b>${sum6}</b></td>
									</tr>
								</tbody>
							</table>
						</center>
						
						<center>
							<table class="table">
								<thead>
									<tr>
										<th scope="col">作者</th>
										<th scope="col">总jsp页面数</th>
										<th scope="col">指导老师</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td style="height: 50px; font-size: 20px"><b>才拉加布</b></td>
										<td style="height: 50px; font-size: 20px"><b>32</b></td>
										<td style="height: 50px; font-size: 20px"><b>高江伟/袁文浩</b></td>
									</tr>
								</tbody>
							</table>
						</center>
					</div>

				</div>

				<div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-block-col">
					<div class="tm-bg-primary-dark tm-block tm-block-taller">
						<h2 class="tm-block-title">管理员账号及软件版本</h2>
						<div id="pieChartContainer">
							<table class="table">
								<thead>
									<tr>
										<th scope="col">id</th>
										<th scope="col">账号</th>
										<th scope="col">密码</th>
									</tr>
								</thead>
								<tbody>
									<c:if test="${adminId!=null}">
									
										<tr>
											<td><b>${adminId}</b></td>
											<td><b>${adminAccount}</b></td>
											<td>${adminPassword}</td>
										</tr>
										
									</c:if>
								</tbody>
							</table>
							<a href="javascript:void(0);" onclick="addAdmin()"
									class="btn btn-primary btn-block text-uppercase mb-3">添加一个新管理员</a>
							<!-- 添加确认框 -->
									<div id="AddAdmin"
										style="border: 1px solid; width: 100%; margin: auto; height: 100%; position: fixed; left: 0px; top: 0px; background: rgb(0, 0, 0, 0.6); overflow: auto; text-align: center; display: none;">
										<div
											style="background: white; width: 300px; height: 300px; margin: 0 auto; margin-top: 10%; border-radius: 5px;">
											<div style="height: 260px; border-bottom: 1px solid #CCCCCC;">
												<!-- 框内内容 -->
													<div style="font-size: 0.9rem; padding-top: 30px;">您要添加用戶嗎？</div>
													<br />
													<h5>账号:</h5>
													<input type="text" class="form-control" id="acc" name="acc"
														placeholder="Account(个人邮箱更容易记忆)">
													<h5>密码:</h5>
													<input type="text" class="form-control" id="password" name="pass"
														placeholder="password(新密碼)">
											</div>
											<div style="height: 39px;">
												<div onclick=" Addadmin()"
													style="float: left; width: 49%; height: 39px; border-right: 1px solid #CCCCCC; line-height: 39px; font-size: 1rem;">确认</div>
												<div onclick=" delescadmin()"
													style="float: right; width: 50%; height: 39px; line-height: 39px; font-size: 1rem">取消</div>
											</div>
										</div>
									</div>
					
									<!-- 刪除 -->
									<script type="text/javascript">
						                    var id ;
						                    var acc;
						                    var pass;
						                    var isStr;
						                    
						              		function addAdmin(){
						              			/* 显示 */
						              			document.getElementById("AddAdmin").style.display="block";
						              			document.getElementById("zixun_news").style.display="none";
						              			document.getElementById("blogT").style.display="none";
						              			id = id1;
						               		}
						              		function Addadmin(){
						              			/* 操作 */
					                  			$.post("AddAdmin",
					                  			{"acc":acc,"pass":pass},
					                  			function(data){
					                  				if(data==true){
					                  					alert("已添加账号为:"+acc+"的管理员")
					                  					location.href="Agordi"
					                  				}
					                  			},"json")
					                  		}
						               		function delescadmin(){
						               			/* 隐藏 */
						               			document.getElementById("AddAdmin").style.display="none";
						               			document.getElementById("zixun_news").style.display="block";
						               			document.getElementById("blogT").style.display="block";
						               		}
						               		
						               	 $("#password").blur(function() {
						                 	pass = $("#password").val();
						             		pa = /^[a-zA-Z]\w{5,17}$/;
						             		if (pa.test(password) == false) {
						             			$("#password").css("color", "red");
						             			isStr = false
						             		} else {
						             			$("#password").css("color", "green");
						             			isStr = true
						             		}
						             	})

						             	$("#acc").blur(function() {
						             		acc = $("#acc").val();
						             		ac = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
						             		if (ac.test(account) == false) {
						             			$("#acc").css("color", "red");
						             			isStr = false
						             			//查相同
						             			$.post("findAdminAccount", {
						             				"acc" : acc
						             			}, function(data) {
						             				if (data == false) {
						             					$("#acc").val("账号重复");
						             					$("#acc").css("color", "red");
						             					isStr = false
						             				}
						             			}, "json")

						             		} else {
						             			$("#acc").css("color", "green");
						             			isStr = true
						             			//查相同
						             			$.post("findAdminAccount", {
						             				"acc" : acc
						             			}, function(data) {
						             				if (data == false) {
						             					$("#acc").val("账号重复");
						             					$("#acc").css("color", "red");
						             					isStr = false
						             				}
						             			}, "json")
						             			
						             		}
						             	})
						               		
						             </script>
							
							<br />
							<table class="table">
								<thead>
									<tr>
										<th scope="col">标题</th>
										<th scope="col">java</th>
										<th scope="col">框架</th>
										<th scope="col">前端框架</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<c:forEach items="${web}" var="web">
											<td><b>${web.title}</b></td>
											<td><b>${web.java}</b></td>
											<td><b>${web.frame}</b></td>
											<td><b>${web.front_end}</b></td>
										</c:forEach>


									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<!-- blog
				 -->
				<div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-block-col" id="blogT">
					<div
						class="tm-bg-primary-dark tm-block tm-block-taller tm-block-overflow">
						<h2 class="tm-block-title">新加入B Log</h2>

						<div class="tm-notification-items">
							<c:forEach items="${messa}" var="mess">
								<div class="media tm-notification-item">
									<div class="media-body ">
										<div class="meta mb-12">
											<div><p >${mess.time}</p></div>
											
											<c:if test="${mess.u_id != 0}">
												<div><a style="color: white;">发布人：${mess.name}</a></div>
											</c:if>
											
											<c:if test="${mess.com_id != 0}">
												<div><a style="color: white;">发布人：${mess.name}</a></div>
											</c:if>
											
										</div>
										<div class="meta mb-12" >
											内容：&nbsp;<span style="word-warp:break-word;word-break:break-all" class="text-info" >${mess.content}</span>
										</div>
										
										可选操作：
										<a href="javascript:void(0);" onclick="DeleteMess(${mess.id})"class="tm-product-delete-link"> <i
															class="fa fa-trash-alt tm-product-delete-icon"></i>
													</a>
										
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			<!-- 删除确认框 -->
				<div id="deleteMess"
					style="border: 1px solid; width: 100%; margin: auto; height: 100%; position: fixed; left: 0px; top: 0px; background: rgb(0, 0, 0, 0.6); overflow: auto; text-align: center; display: none;">
					<div
						style="background: white; width: 250px; height: 150px; margin: 0 auto; margin-top: 10%; border-radius: 5px;">
						<div style="height: 110px; border-bottom: 1px solid #CCCCCC;">
							<!-- 框内内容 -->
							<div style="font-size: 0.9rem; padding-top: 30px;">您确定要删除该项目吗？</div>
							<div style="font-size: 0.8rem; margin-top: 15px;">一旦删除将不可恢复。</div>
						</div>
						<div style="height: 39px;">
							<div onclick=" delemess()"
								style="float: left; width: 49%; height: 39px; border-right: 1px solid #CCCCCC; line-height: 39px; font-size: 1rem;">确认</div>
							<div onclick=" delescmess()"
								style="float: right; width: 50%; height: 39px; line-height: 39px; font-size: 1rem">取消</div>
						</div>
					</div>
				</div>

				<!-- 刪除 -->
				<script type="text/javascript">
	                    var id ;
	                    
	              		function DeleteMess(id1){
	              			/* 显示 */
	              			document.getElementById("deleteMess").style.display="block";
	              			document.getElementById("zixun_news").style.display="none";
	              			id = id1;
	               		}
	              		function delemess(){
	              			/* 删除操作 */
                  			$.post("deleteMess",
                  			{"id":id},
                  			function(data){
                  				if(data==true){
                  					alert("已删除id为:"+id+"交流记录")
                  					location.href="Agordi"
                  				}
                  			},"json")
                  		}
	               		function delescmess(){
	               			/* 隐藏 */
	               			document.getElementById("deleteMess").style.display="none";
	               			document.getElementById("zixun_news").style.display="block";
	               		}
	             </script>
	             
	             
	             <!-- 资讯 -->
				<div class="container mt-5 " id="zixun_news">
					<div class="row tm-content-row">
						<div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 tm-block-col">
						
							<div class="tm-bg-primary-dark tm-block tm-block-products">
							
								<div class="tm-product-table-container">
									<table
										class="table table-hover tm-table-small tm-product-table">
										<thead>
											<tr>
												<th scope="col">&nbsp;</th>
												<th scope="col">标&nbsp;题</th>
												<th scope="col">内&nbsp;容</th>
												<th scope="col">图&nbsp;片</th>
												<th scope="col">发&nbsp;布&nbsp;时&nbsp;间</th>
												<th scope="col">操&nbsp;作</th>
											</tr>
										</thead>
										<tbody>

											<c:forEach items="${real}" var="re">
												<tr>
													<!-- 装饰 -->
													<th scope="row"><input type="checkbox" /></th>
													<!-- 内容 -->
													<td><h6>${re.title}</h6></td>
													<td>${re.content}</td>
													<td>${re.img}</td>
													<td>${re.time}</td>
													<!-- 操作 -->
													<td>
													<!-- 删除此行 --> <a href="javascript:void(0);"
														onclick="delnews(${re.id})"
														class="tm-product-delete-link"> <i
															class="fa fa-trash-alt tm-product-delete-icon"></i>
													</a> 

													</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
								<!-- table container -->
								<a href="postNews"
									class="btn btn-primary btn-block text-uppercase mb-3">添加一个新资讯</a>

							</div>
						</div>
					</div>
				</div>

				<!-- 删除确认框 -->
				<div id="deleteNews"
					style="border: 1px solid; width: 100%; margin: auto; height: 100%; position: fixed; left: 0px; top: 0px; background: rgb(0, 0, 0, 0.6); overflow: auto; text-align: center; display: none;">
					<div
						style="background: white; width: 250px; height: 150px; margin: 0 auto; margin-top: 10%; border-radius: 5px;">
						<div style="height: 110px; border-bottom: 1px solid #CCCCCC;">
							<!-- 框内内容 -->
							<div style="font-size: 0.9rem; padding-top: 30px;">您确定要删除该项目吗？</div>
							<div style="font-size: 0.8rem; margin-top: 15px;">一旦删除将不可恢复。</div>
						</div>
						<div style="height: 39px;">
							<div onclick=" method1()"
								style="float: left; width: 49%; height: 39px; border-right: 1px solid #CCCCCC; line-height: 39px; font-size: 1rem;">确认</div>
							<div onclick=" delesc1()"
								style="float: right; width: 50%; height: 39px; line-height: 39px; font-size: 1rem">取消</div>
						</div>
					</div>
				</div>
				<!-- 刪除 -->
				<script type="text/javascript">
	                    var id = null;
	                    
	              		function delnews(id1){
	              			/* 显示 */
	              			document.getElementById("deleteNews").style.display="block";
	              			id = id1;
	               		}
	              		
	              		function method1(){
	              			/* 删除操作 */
                  			$.post("deleteNews",
                  			{"id":id},
                  			function(data){
                  				if(data==true){
                  					alert("已删除ID为"+id+"的资讯")
                  					location.href="Agordi"
                  				}
                  			},"json")
                  		}
	               		function delesc1(){
	               			/* 隐藏 */
	               			document.getElementById("deleteNews").style.display="none";
	               		}
	             </script>
			</div>
			
			<footer class="tm-footer row tm-mt-small">
			<div class="col-12 font-weight-light">
				<p class="text-center text-white mb-0 px-4 small">
          版权所有 &copy; <b>2021</b> From CJ
          作者: <a style="color:white;" href="tencent://AddContact/?fromId=45&amp;fromSubId=1&amp;subcmd=all&amp;uin=2356097973&amp;fuin=%20&amp;website=&amp;Site=%E5%9C%A8%E7%BA%BF%E5%AE%A2%E6%9C%8D&amp; Menu=yes"
					target="blank">&copy;CJ</a>
        </p>
			</div>
			</footer>
		</div>
		
		<script src="/ringEmployment/EXTERNAL/js/moment.min.js"></script>
		<!-- https://momentjs.com/ -->
		<script src="/ringEmployment/EXTERNAL/js/Chart.min.js"></script>
		<!-- http://www.chartjs.org/docs/latest/ -->
		<script src="/ringEmployment/EXTERNAL/js/bootstrap.min.js"></script>
		<!-- https://getbootstrap.com/ -->
</body>

</html>