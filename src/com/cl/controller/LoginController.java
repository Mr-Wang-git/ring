package com.cl.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cl.service.LoginService;
import com.cl.service.SigninService;

@Controller
public class LoginController {
	
	@Autowired
	private LoginService loginService;
	
	@Autowired
	private SigninService signinService;
	
//	账号
	
	@RequestMapping("login")
	public String login() {
		return "login";
	}
	
	
	
//	正式登录
	@RequestMapping("load")
	@ResponseBody
	public String load(HttpServletRequest req) {
		String acc = req.getParameter("acc");
		String pass =req.getParameter("pass");
		
		String index =null;
		
//		在用户数据库中查找//判断公司/用户
		String is = signinService.findUserAccount(acc);
		String is2 = signinService.findCompanyAccount(acc);
		 
		String is5 = null;
		
		if(is != null) {
			 is5 = is;
			 req.getSession().setAttribute("useraccount", is5);
		}else {
			 is5 = is2;
			req.getSession().setAttribute("companyaccount", is5);
		}
//		判断账号密码是否正确
		if(is == null && is2 == null) {
			index="0";
			System.err.println("无此账号");
			
		}else if(is == null){
			
//			用户为空则 公司登录
			String is3 = loginService.SelectCompanyAccountAndPass(acc,pass);
			if(is3!=null) {
				index="1";
			}else {
				index="0";
			}	
			
		}else if(is2 == null){
//			公司为空则 用户登录
			String is4 = loginService.SelectUserAccountAndPass(acc,pass);
			if(is4!=null) {
				index="2";
			}else {
				index="0";
			}
			
		}
		return index+"*"+is5;
	}
	
	
	
//	 忘记密码
	 @RequestMapping("ForgetThePassword")
	 public String ForgetThePassword() {
		 return "ForgetThePassword";
	 }
	 
//	 isBoolean
	 @RequestMapping("isBoolean")
	 @ResponseBody
	 public String isBoolean(HttpServletRequest req) {
		 String password = "";
		 String account = req.getParameter("account");
		 String phone = req.getParameter("phone");
		 
		String is = signinService.findUserAccount(account);
		String is2 = signinService.findCompanyAccount(account);
		
		 
		
//		判断账号手机是否正确
		if(is == null && is2 == null) {
			password="0";
			System.err.println("无此账户");
		}else if(is == null){
//			公司账号
			String is3 = loginService.SelectCompanyPass(account,phone);
			if(is3!=null) {
				password = is3;
			}else {
				password = "0";
			}	
			
		}else if(is2 == null){
//			用户账号
			String is4 = loginService.SelectUserPass(account,phone);
			if(is4!=null) {
				password = is4;
			}else {
				password = "0";
			}
			
		 }
		 
		 return password;
		}
	 
	 
	 
	 
	//忘记账号
		@RequestMapping("ForgetTheAccount")
		public String ForgetTheAccount() {
			return "ForgetTheAccount";
		}
//	 找回账号
		@RequestMapping("getAccount")
		@ResponseBody
		public String getAccount(HttpServletRequest req){
			String account = "";
			String cutype = req.getParameter("cutype");
			String phone = req.getParameter("phone");
			 
			 if(cutype.equals("公司")) {
				 
				 account = loginService.findCompanyAccountByPhone(phone);
				 if(account == null) {
					 account = "0";
				 }
				 
			 }else if(cutype.equals("用户")){
				 
				 account = loginService.findUserAccountByPhone(phone);
				 if(account == null) {
					 account = "0";
				 }
				 
			 }
			 
			 
			 
			 return account;
		}
	 
	 
	 }




