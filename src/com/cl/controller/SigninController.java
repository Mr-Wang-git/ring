package com.cl.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cl.service.SigninService;
@SuppressWarnings("all")
@Controller
public class SigninController {
	@Autowired
	private SigninService signinService;
	
//	页面跳转
	@RequestMapping("signin")
	public String UserSignin() {
		return "signin";
	}
	
	
	@RequestMapping("companySignin")
	public String companySignin() {
		return "companySignin";
	}
	
	
	
//	检测重复账号

//	用户
	@RequestMapping("findUserAccount")
	@ResponseBody
	public String findUserAccount(HttpServletRequest req) {
		String account = req.getParameter("acc");
		String is = signinService.findUserAccount(account);
		String isBoolean=null;
		if(is == null) {
			isBoolean = "true";
		}else {
			isBoolean = "false";
		}
		return isBoolean;
	}
//	公司
	@RequestMapping("findCompanyAccount")
	@ResponseBody
	public String findCompanyAccount(HttpServletRequest req) {
		String account = req.getParameter("acc");
		
		String is = signinService.findCompanyAccount(account);
		String isBoolean=null;
		if(is == null) {
			isBoolean = "true";
		}else {
			isBoolean = "false";
		}
		return isBoolean;
	}
//	公司
	
	
	
	
//	注册用户账号
	@RequestMapping("signinUser")
	public String signinUser(HttpServletRequest req) {
		String phone = req.getParameter("phone");
		String pass = req.getParameter("pass");
		String account = req.getParameter("account");
		
		System.err.println(account);
//		创建两个附属表
		signinService.signinResume(account,phone);
		signinService.signinUserInfo(account,phone);
//		查询附属表id
		Integer id1 = signinService.selectResume(account,phone);
		Integer id2 = signinService.selectUserInfo(account,phone);
//		创建主表
		String id3 =  id1.toString();
		String id4 =  id2.toString();
		signinService.signinUser(account,pass,id3,id4);
		
		return "login";
	}

//	注册公司账号
	@RequestMapping("SigninCompany")
	public String SigninCompany(HttpServletRequest req) {
		String acc= req.getParameter("acc");
		String pass=req.getParameter("pass");
		String phone=req.getParameter("phone");
		String legal= req.getParameter("legal");
		
		String address=req.getParameter("address");
		
//		创建附属表
		signinService.signinCompanyInfo(phone,legal,address,acc);
		
//		查询附属表id
		String id = signinService.selectCompanyInfoId(legal,address,acc);
		
//		创建主表
		signinService.SigninCompany(acc,pass,id);
	
		return "login";
	}
	
	
	
}
