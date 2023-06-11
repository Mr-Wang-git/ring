<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
      <script src="/ringEmployment/EXTERNAL/js/jquery-3.3.1.min.js"></script>
    <!-- https://jquery.com/download/ -->
  
  
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>发布新闻</title>
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css?family=Roboto:400,700"
    />
    <!-- https://fonts.google.com/specimen/Roboto -->
    <link rel="stylesheet" href="/ringEmployment/EXTERNAL/css/fontawesome.min.css" />
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="/ringEmployment/EXTERNAL/css/bootstrap.min.css" />
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="/ringEmployment/EXTERNAL/css/templatemo-style.css">
    <!--
	Product Admin CSS Template
	https://templatemo.com/tm-524-product-admin
	-->
  </head>

  <body id="reportsPage">
    <nav class="navbar navbar-expand-xl">
      <div class="container h-100">
        <a class="navbar-brand" href="index.html">
          <h1 class="tm-site-title mb-0">Ring. Admin</h1>
        </a>
        <button
          class="navbar-toggler ml-auto mr-0"
          type="button"
          data-toggle="collapse"
          data-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <i class="fas fa-bars tm-nav-icon"></i>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
           <ul class="navbar-nav mx-auto h-100">
                        <li class="nav-item">
                            <a class="nav-link " href="adminLoad">
                                <i class="fas fa-tachometer-alt"></i>
                                	首页
                                <span class="sr-only">(current)</span>
                            </a>
                        </li>
                        
                        <li class="nav-item">
                            <a class="nav-link " href="userTable">
                                <i class="far fa-user"></i>
                                	用户
                            </a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="companyTable">
                                <i class="far fa-user"></i>
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

	<form action="insertNews" method="post" enctype="multipart/form-data">
		<div class="container">
			<div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 tm-block-col">

				<div class="col-md-12 ">
					<h1>标题:</h1>
					<h2>
						<input class="form-control" name="title" id="title" type="text" placeholder="标题">
					</h2>
				</div>
				<div class="col-md-12 ">
					<h1>"图片选择"</h1>
					<div id="wrapper">
						<input id="fileUpload" type="file" name="file" id="picpath" /><br />
						<div id="image-holder"></div>
					</div>
					<script type="text/javascript">
						$("#fileUpload").on('change', function() {

							if (typeof (FileReader) != "undefined") {

								var image_holder = $("#image-holder");
								image_holder.empty();

								var reader = new FileReader();
								reader.onload = function(e) {
									$("<img />", {
										"src" : e.target.result,
										"class" : "img-rounded",
										"style" : "height: 100%; width: 100%;"
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
				
				<div class="col-md-12 ">
				<h1>"内容"</h1>
					<textarea name="content" id="content" class="form-control" rows="3"></textarea>
				</div>
			</div>
		</div>
		
		<center >
				<input type="submit" id="but" class="btn btn-secondary py-3 px-4"></input>
		</center>
	</form>


	<script src="/ringEmployment/EXTERNAL/js/bootstrap.min.js"></script>
    <!-- https://getbootstrap.com/ -->
    <script>
      $(function() {
        $(".tm-product-name").on("click", function() {
          window.location.href = "edit-product.html";
        });
      })
    </script>
  </body>
</html>