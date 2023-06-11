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
    <title>Admin </title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700">
    <!-- https://fonts.google.com/specimen/Roboto -->
    <link rel="stylesheet" href="/ringEmployment/EXTERNAL/css/fontawesome.min.css">
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="/ringEmployment/EXTERNAL/css/bootstrap.min.css">
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="/ringEmployment/EXTERNAL/css/templatemo-style.css">
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
                <button class="navbar-toggler ml-auto mr-0" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fas fa-bars tm-nav-icon"></i>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mx-auto h-100">
                        <li class="nav-item">
                            <a class="nav-link active" href="adminLoad">
                                <i class="fas fa-tachometer-alt"></i>
                                	首页
                                <span class="sr-only">(current)</span>
                            </a>
                        </li>
                        
                        <li class="nav-item">
                            <a class="nav-link" href="userTable">
                                <i class="far fa-user"></i>
                                	用户
                            </a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="companyTable">
                                <i class="fa fa-user"></i>
                                	公司
                            </a>
                        </li>
                        	<li class="nav-item"><a class="nav-link " href="Agordi">
							<i class="fa fa-cog"></i> 设置
					</a></li>
					
                    </ul>
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link d-block" href="adminlogin">
                                ${adminAccount}, <b>Logout</b>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>

        </nav>
        <div class="container">
            <div class="row">
                <div class="col">
                    <p class="text-white mt-5 mb-5">Welcome back, <b>${adminAccount}</b></p>
                </div>
            </div>
            <!-- row -->
            <div class="row tm-content-row">
				<div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 tm-block-col">
					<div
						class="tm-bg-primary-dark tm-block tm-block-taller tm-block-overflow">
						<h2 class="tm-block-title">所有信息</h2>
						<center>
						<table class="table" >
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
		                                    <td style="height: 200px;font-size: 20px"><b>${sum1}</b></td>
		                                    <td style="height: 200px;font-size: 20px"><b>${sum2}</b></td>
		                                    <td style="height: 200px;font-size: 20px"><b>${sum3}</b></td>
		                                    <td style="height: 200px;font-size: 20px"><b>${sum4}</b></td>
		                                    <td style="height: 200px;font-size: 20px"><b>${sum5}</b></td>
		                                    <td style="height: 200px;font-size: 20px"><b>${sum6}</b></td>
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
                            	<br/><br/><br/>
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
                           <!--  <canvas id="pieChart" class="chartjs-render-monitor" width="200" height="200"></canvas> -->
                        </div>                        
                    </div>
                </div>
                
                <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-block-col">
                    <div class="tm-bg-primary-dark tm-block tm-block-taller tm-block-overflow">
                        <h2 class="tm-block-title">新加入公司</h2>
                        
                        
                        <div class="tm-notification-items">
                        <c:forEach items="${companyInfo}" var="com">
                            <div class="media tm-notification-item">
                                <div class="tm-gray-circle">
                                
                                <img src="/ringEmployment/EXTERNAL/img/${com.img}" style="width: 80px;height: 80px;" alt="Avatar Image" class="rounded-circle">
                                
                                </div>
                                <div class="media-body">
                                    <p class="mb-2">
                                    <b>${com.companyName}</b>
                                  	  的法人为   <b>${com.legalRep}</b>  
                                    <a href="https://${com.officialWebsite}"  class="tm-notification-link">官网地址</a>
                                    	地址：${com.officeAddress}</p>
                                    <span class="tm-small tm-text-color-secondary">联系方式：${com.email}</span>
                                </div>
                            </div>
                            </c:forEach>
                            
                        </div>
                    </div>
                </div>
                <div class="col-12 tm-block-col">
                    <div class="tm-bg-primary-dark tm-block tm-block-taller tm-block-scroll">
                        <h2 class="tm-block-title">所有用户</h2>
                        
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">id</th>
                                    <th scope="col">账号</th>
                                    <th scope="col">密码</th>
                                    <th scope="col">简历</th>
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="user" items="${user}">
	                            <tr>
	                                    <th scope="row"><b>${user.id}</b></th>
	                                    <td><b>${user.account}</b></td>
	                                    <td><b>${user.password}</b></td>
	                                    <td><b>${user.resumeid}</b></td>
	                                </tr>
                            
                            </c:forEach>
                                
                                
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
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