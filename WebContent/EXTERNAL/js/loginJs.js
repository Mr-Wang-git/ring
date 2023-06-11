$(function(){
	var acc =null;
	var pass=null;
//	正则
	var pa = /^[a-zA-Z]\w{5,17}$/;
	var ac = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
	var istr = null;
	
	$("#account").blur(function(){
		acc =  $("#account").val();
		
		if (ac.test(acc)) {
			$("#account").css("color", "green");
			istr = true;
		} else {
			$("#account").css("color", "red");
			istr = false;
		}
		
	})
	
	$("#password").blur(function(){
		pass = $("#password").val();
		
		if (pa.test(pass)) {
			$("#password").css("color", "green");
			istr = true;
		} else {
			$("#password").css("color", "red");
			istr = false;
		}
		
	})
	
	$("#sub").click(function(){
		if(istr){
			/* ASYNC 设置为 false，则所有的请求均为同步请求，在没有返回值之前，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行 */
			$.ajax({
                async:false,
                url:"load",
                type:"post",
                data: {"acc":acc,"pass":pass},
                datatype: 'json',
                success: function (data) {
                	
                	var code = data.slice(0,1); //公司/用户
                	var id = data.slice(2,999);//账号
                	
                	if(code=="0"){
    					alert("密码错误");
    					return false;
    				}else if (code=="1"){
//    					公司
    					
    					window.location.href="company/index";
    				}else{
//    					用户
    					
    					window.location.href="user/index";
    					
    					    					
    				}
                }
            });
			
		}else{
			alert("请先将红色提示消除");
			return false;
		}
	})
	
	
	
	
})
