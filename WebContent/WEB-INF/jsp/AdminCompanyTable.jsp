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
    <title>管理公司</title>
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
                            <a class="nav-link active" href="companyTable">
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
    
    
    <div class="container mt-5">
      <div class="row tm-content-row">
        <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 tm-block-col">
          <div class="tm-bg-primary-dark tm-block tm-block-products">
            <div class="tm-product-table-container">
              <table class="table table-hover tm-table-small tm-product-table">
                <thead>
                  <tr>
                    <th scope="col">&nbsp;</th>
                    <th scope="col">账&nbsp;号</th>
                    <th scope="col">密&nbsp;码</th>
                    <th scope="col">简&nbsp;历&nbsp;ID</th>
                    <th scope="col">操&nbsp;作</th>
                  </tr>
                </thead>
                <tbody>
                
                <c:forEach items="${com}" var="com">
	                  <tr>
	                  <!-- 装饰 -->
	                    <th scope="row"><input type="checkbox"/></th>
	                    <!-- 内容 -->
	                    <td><h6>${com.account}</h6></td>
	                    <td>${com.password}</td>
	                    <td>${com.infoid}</td>
	                    <!-- 操作 -->
	                    <td>
	                      <!-- 删除此行 -->
	                      <a href="javascript:void(0);" onclick="del(${com.id},${com.infoid})" class="tm-product-delete-link">
	                        <i class="fa fa-trash-alt tm-product-delete-icon"></i>
	                      </a>
	                      
	                      <!-- 修改此行 -->
	                      <a href="javascript:void(0);" onclick="update(${com.id})" class="tm-product-delete-link">
	                        <i class="fa fa-pencil-alt tm-product-delete-icon"></i>
	                      </a>
	                      
	                    </td>
	                  </tr>
                  </c:forEach>
                     
	          
                </tbody>
              </table>
            </div>
            <!-- table container -->
            <a
              href="javascript:void(0);" onclick="add()"
              class="btn btn-primary btn-block text-uppercase mb-3">添加一个新用户</a>
            
          </div>
        </div>
      </div>
    </div>
    
    <!-- 删除确认框 -->
	<div id="delete" style="border: 1px solid;width: 100%;margin: auto;height: 100%;position: fixed;left: 0px;top: 0px;background: rgb(0,0,0,0.6);overflow: auto;text-align: center;display: none;">
		<div style="background: white;width: 250px;height: 150px;margin:0 auto;margin-top: 10%;border-radius: 5px;">
			<div style="height: 110px;border-bottom: 1px solid #CCCCCC;">
				<!-- 框内内容 -->
				<div style="font-size: 0.9rem;padding-top: 30px;">您确定要删除该项目吗？</div>
				<div style="font-size: 0.8rem;margin-top: 15px;">一旦删除将不可恢复。</div>
			</div>
			<div style="height: 39px;">
				<div onclick=" method1()" style="float: left;width: 49%;height: 39px;border-right: 1px solid #CCCCCC;line-height: 39px;font-size: 1rem;">确认</div>
				<div onclick=" delesc1()" style="float: right;width: 50%;height: 39px;line-height: 39px;font-size: 1rem">取消</div>
			</div>
		</div>
	</div>
    
    <!-- 刪除 -->
    <script type="text/javascript">
	                    var id ;
	                    var infoid;
	                    
	              		function del(id1,infoid1){
	              			/* 显示 */
	              			document.getElementById("delete").style.display="block";
	              			id = id1;
	              			infoid = infoid1;
	              			
	               		}
	              		function method1(){
	              			/* 删除操作 */
                  			$.post("deleteThisCom",
                  			{"id":id,"infoid":infoid},
                  			function(data){
                  				if(data==true){
                  					alert("已删除ID为"+id+"的公司用户账号")
                  					location.href="companyTable"
                  				}
                  			},"json")
                  		}
	              		
	               		function delesc1(){
	               			/* 隐藏 */
	               			document.getElementById("delete").style.display="none";
	               		}
	               		
	             </script>     
    
    
    <!-- 修改确认框 -->
	<div id="update" style="border: 1px solid;width: 100%;margin: auto;height: 100%;position: fixed;left: 0px;top: 0px;background: rgb(0,0,0,0.6);overflow: auto;text-align: center;display: none;">
		<div style="background: white;width: 250px;height: 150px;margin:0 auto;margin-top: 10%;border-radius: 5px;">
			<div style="height: 110px;border-bottom: 1px solid #CCCCCC;">
				<!-- 框内内容 -->
				<div style="font-size: 0.9rem;padding-top: 30px;">您只能修改用戶密碼！</div>
				<br/>
				<input type="text" id="pass" name="name" placeholder="新密碼">
				<br/>
			</div>
			<div style="height: 39px;">
				<div onclick="method2()" style="float: left;width: 49%;height: 39px;border-right: 1px solid #CCCCCC;line-height: 39px;font-size: 1rem;">确认</div>
				<div onclick="delesc2()" style="float: right;width: 50%;height: 39px;line-height: 39px;font-size: 1rem">取消</div>
			</div>
		</div>
	</div>
    
    <!-- 修改 -->
    <script type="text/javascript">
	                    var id ;
	                    var password;
	                    
	              		function update(id1){
	              			/* 显示 */
	              			document.getElementById("update").style.display="block";
	              			id = id1;
	               		}
	              		
	              		function method2(pass){
	              			
	              			password = $("#pass").val();
	              			/* 修改操作 */
                  			$.post("updateThisCom",
                  			{"id":id,"pass":password},
                  			function(data){
                  				if(data==true){
                  					alert("已修改ID为"+id+"的公司用户的密碼")
                  					location.href="companyTable"
                  				}
                  			},"json") 
                  			
                  			
                  		}
	              		
	               		function delesc2(){
	               			/* 隐藏 */
	               			document.getElementById("update").style.display="none";
	               		}
	               		
	             </script>
	             
	             
	<!-- 添加确认框 -->
	<div id="add" style="border: 1px solid;width: 100%;margin: auto;height: 100%;position: fixed;left: 0px;top: 0px;background: rgb(0,0,0,0.6);overflow: auto;text-align: center;display: none;">
		<div style="background: white;width: 400px;height: 440px;margin:0 auto;margin-top: 10%;border-radius: 5px;">
			<div style="height: 400px;border-bottom: 1px solid #CCCCCC;">
				<!-- 框内内容 -->
				<div style="font-size: 0.9rem;padding-top: 30px;">您要添加用戶嗎？</div>
				<br/>
					<h6>账号</h6><input type="text" class="form-control" id="acc" name="acc" placeholder="Account(个人邮箱更容易记忆)" >
					<h6>密码</h6><input type="text" class="form-control" id="password" name="pass"  placeholder="password(新密碼)">
					<h6>手机号</h6><input type="text" class="form-control" id="phone" name="phone" placeholder="Cell-phone Number(手机号，用于找回密码使用)">
					<h6>法人</h6><input type="text" class="form-control" id="legal" name="legal" placeholder="Legal (法定代表人)">
				<br/>
			</div>
			<div style="height: 39px;">
				<div onclick="method3()" style="cursor:pointer;float: left;width: 49%;height: 39px;border-right: 1px solid #CCCCCC;line-height: 39px;font-size: 1rem;">确认</div>
				<div onclick="delesc3()" style="float: right;width: 50%;height: 39px;line-height: 39px;font-size: 1rem">取消</div>
			</div>
		</div>
	</div>
    
    <!-- 添加 -->
    <script type="text/javascript">
    
    var account ;
	var password ;
	var phone ;
    var isStr ;
//	法定代表人
	var legal ;
    
	function method3(){
			
			if(!isStr){
				
				alert("自行体会！error");
				return;
				
			}
				
				alert("添加中")
				/* 添加操作 */
				$.post("addThisCom",
              			{"acc":account,"pass":password,"phone":phone,"legal":legal},
              			function(data){
              				if(data==true){
              					alert("已添加账号为"+account+"的公司用户")
              					location.href="companyTable"
              				}
              			},"json") 
					
		}
	
	$("#legal").blur(function(){
		legal = $("#legal").val();
		var name = /[\u4e00-\u9fa5]/;
		if(name.test(legal)){
			$("#legal").css("color", "green");
			istr = true;
		}else{
			$("#legal").css("color", "red");
			istr = false;
		}
		
	})
	
    
    
    $("#password").blur(function() {
    	password = $("#password").val();
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
		account = $("#acc").val();
		ac = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
		if (ac.test(account) == false) {
			$("#acc").css("color", "red");
			isStr = false
			
			$.post("findCompanyAccount", {
				"acc" : account
			}, function(data) {
				if (data == false) {
					$("#acc").val("账号重复");
					$("#acc").css("color", "red");
					isStr = false
				}
			}, "json")

			$.post("findUserAccount", {
				"acc" : account
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
			
			$.post("findCompanyAccount", {
				"#acc" : account
			}, function(data) {

				if (data == false) {
					$("#acc").val("账号重复");
					$("#acc").css("color", "red");
					isStr = false
				}
			}, "json")

			$.post("findUserAccount", {
				"acc" : account
			}, function(data) {

				if (data == false) {
					$("#acc").val("账号重复");
					$("#acc").css("color", "red");
					isStr = false
				}
			}, "json")
		}
	})

	
					$("#phone").blur(function() {
						phone = $("#phone").val();
						ph = /^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/;
						if (ph.test(phone) == false) {
							$("#phone").css("color", "red")
							isStr = false
						} else {
							$("#phone").css("color", "green")
							isStr = true
						}
					})
    
					
	              		function add(){
	              			/* 显示 */
	              			document.getElementById("add").style.display="block";
	               		}
	              		
	              	
	              		
	               		function delesc3(){
	               			/* 隐藏 */
	               			document.getElementById("add").style.display="none";
	               		}
	               		
	             </script>
    
    
    <footer class="tm-footer row tm-mt-small">
      <div class="col-12 font-weight-light">
        <p class="text-center text-white mb-0 px-4 small">
          版权所有 &copy; <b>2021</b> From CJ
          
          作者: <a style="color:white;" href="tencent://AddContact/?fromId=45&amp;fromSubId=1&amp;subcmd=all&amp;uin=2356097973&amp;fuin=%20&amp;website=&amp;Site=%E5%9C%A8%E7%BA%BF%E5%AE%A2%E6%9C%8D&amp; Menu=yes"
					target="blank">&copy;CJ</a>
        </p>
      </div>
    </footer>


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