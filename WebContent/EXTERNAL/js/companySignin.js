$(function(){
	
//	获取账号
	var acc = null;
//	获取密码
	var pass = null;
//	法定代表人
	var legal = null;
//	电话号
	var phone = null;
//	获取地址
	var province = null;
	var city = null;
	var area = null;
//	正则
	var pa = /^[a-zA-Z]\w{5,17}$/;
	var ac = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
	var ph = /^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/;
	var tel = /\d{3}-\d{8}|\d{4}-\d{7}/;
	var name = /[\u4e00-\u9fa5]/;
	var istr = null;
	
	$("#acc").blur(function() {
		acc = $("#acc").val();
		if (ac.test(ac) == false) {
			$("#acc").css("color", "red");
			istr = false;
			
			$.post("findUserAccount",
					{"acc":acc},
					function(data){
						if(data == false){
							$("#acc").val("账号重复");
							$("#acc").css("color", "red");
							istr = false;
						}else{
							$("#acc").css("color", "green");
							istr = true;
						}
				    },
				"json")
			
			$.post("findCompanyAccount",
					{"acc":acc},
					function(data){
						if(data == false){
							$("#acc").val("账号重复");
							$("#acc").css("color", "red");
							istr = false;
						}else{
							$("#acc").css("color", "green");
							istr = true;
						}
				    },
				"json")
				
				
				
				
		} else {
			$("#acc").css("color", "green");
			istr = true;
			$.post("findUserAccount",
					{"acc":acc},
					function(data){
						if(data==false){
							$("#acc").val("账号重复");
							$("#acc").css("color", "red");
							istr = false;
						}else{
							$("#acc").css("color", "green");
							istr = true;
						}
				    },
				"json")
			
			$.post("findCompanyAccount",
					{"acc":acc},
					function(data){
						if(data==false){
							$("#acc").val("账号重复");
							$("#acc").css("color", "red");
							istr = false;
						}else{
							$("#acc").css("color", "green");
							istr = true;
						}
				    },
				"json")
				
				
				
				
		}
	})
	
	$("#pass").blur(function() {
		pass = $("#pass").val();
		if (pa.test(pass) == false) {
			$("#pass").css("color", "red");
			istr = false;
		} else {
			$("#pass").css("color", "green");
			istr = true;
		}
	})
	
	$("#phone").blur(function(){
		phone = $("#phone").val();
		
		if (ph.test(phone) || tel.test(phone)) {
			$("#phone").css("color", "green");
			istr = true;
		} else {
			$("#phone").css("color", "red");
			istr = false;
		}
	})
	
	$("#legal").blur(function(){
		legal = $("#legal").val();
		if(name.test(legal)){
			$("#legal").css("color", "green");
			istr = true;
		}else{
			$("#legal").css("color", "red");
			istr = false;
		}
		
	})
	
	
	
	$("#sub").click(function(){
		province = $("#cmbProvince").val();
		 city = $("#cmbCity").val();
		 area = $("#cmbArea").val();
		 var address = province + ""+ city+""+area;
		if(istr){
			$.post("SigninCompany",{
					"acc":acc,
					"pass":pass,
					"phone":phone,
					"legal":legal,
					"address":address
					},
				"json");
			
			alert("请牢记账号密码");
			window.location.href="login";
		}else{
			alert("请先将红色提示消除");
			return false;
		}
		 
		 
	})
	
	
})