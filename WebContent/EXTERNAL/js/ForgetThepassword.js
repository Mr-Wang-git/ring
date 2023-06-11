$(function(){
							var ac = null;
							var account = null;

							var ph = null;
							var phone = null;
							
							$("#account").blur(function() {
								account = $("#account").val();
								ac = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
								if (ac.test(account) == false) {
									$("#account").css("color", "red");
								} else {
									$("#account").css("color", "green");
								}
							})
							
							$("#phone").blur(function() {
								phone = $("#phone").val();
								ph = /^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/;
								if (ph.test(phone) == false) {
									$("#phone").css("color", "red")
								} else {
									$("#phone").css("color", "green")
								}
							})

							
							
							$("#sub").click(function(){
								var acc = $("#account").val();
								var phone = $("#phone").val();
								$.post("isBoolean",{"account":acc,"phone":phone},
										function(data){
									if(data=="0"){
										alert("无此账户或绑定手机不同")
									}else{
										alert("此账号密码为:"+ data + "   请牢记密码")
										window.location.href="login";
									}
								})
							})
						})