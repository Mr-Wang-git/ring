$(function() {
	var pass1 = null;
	var pass2 = null;
	var pa = null;

	var ac = null;
	var account = null;

	var ph = null;
	var phone = null;
	
	var isStr = false;

	$(".pass").blur(function() {
		pass1 = $(".pass").val();
		pa = /^[a-zA-Z]\w{5,17}$/;
		if (pa.test(pass1) == false) {
			$(".pass").css("color", "red");
			isStr = false
		} else {
			$(".pass").css("color", "green");
			isStr = true
		}
	})

	$(".pass2").blur(function() {
		pass2 = $(".pass2").val();
		if (pass2 != pass1) {
			$(".pass2").css("color", "red");
			isStr = false
		} else {
			$(".pass2").css("color", "green");
			isStr = true
		}
	})

	$(".acc").blur(function() {
		account = $(".acc").val();
		ac = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
		if (ac.test(account) == false) {
			$(".acc").css("color", "red");
			isStr = false
			
			$.post("findCompanyAccount", {
				"acc" : account
			}, function(data) {
				if (data == false) {
					$(".acc").val("账号重复");
					$(".acc").css("color", "red");
					isStr = false
				}
			}, "json")

			$.post("findUserAccount", {
				"acc" : account
			}, function(data) {
				if (data == false) {
					$(".acc").val("账号重复");
					$(".acc").css("color", "red");
					isStr = false
				}
			}, "json")
			
			

		} else {
			$(".acc").css("color", "green");
			isStr = true
			
			$.post("findCompanyAccount", {
				"acc" : account
			}, function(data) {

				if (data == false) {
					$(".acc").val("账号重复");
					$(".acc").css("color", "red");
					isStr = false
				}
			}, "json")

			$.post("findUserAccount", {
				"acc" : account
			}, function(data) {

				if (data == false) {
					$(".acc").val("账号重复");
					$(".acc").css("color", "red");
					isStr = false
				}
			}, "json")

			

		}

	})

	$("#phone").blur(
					function() {
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

	$("#sub").click(function() {

							if (isStr || pass1 == pass2 && ph.test(phone) && ac.test(account)) {
								$.post("signinUser", {
									"pass" : pass2,
									"phone" : phone,
									"account" : account
								}, "json");
								
								alert("请牢记账号密码");
								window.location.href="login"
							} else {
								alert("请先将红色提示消除");
								return false;
							}
						})
})