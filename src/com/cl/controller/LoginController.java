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
	
//	�˺�
	
	@RequestMapping("login")
	public String login() {
		return "login";
	}
	
	
	
//	��ʽ��¼
	@RequestMapping("load")
	@ResponseBody
	public String load(HttpServletRequest req) {
		String acc = req.getParameter("acc");
		String pass =req.getParameter("pass");
		
		String index =null;
		
//		���û����ݿ��в���//�жϹ�˾/�û�
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
//		�ж��˺������Ƿ���ȷ
		if(is == null && is2 == null) {
			index="0";
			System.err.println("�޴��˺�");
			
		}else if(is == null){
			
//			�û�Ϊ���� ��˾��¼
			String is3 = loginService.SelectCompanyAccountAndPass(acc,pass);
			if(is3!=null) {
				index="1";
			}else {
				index="0";
			}	
			
		}else if(is2 == null){
//			��˾Ϊ���� �û���¼
			String is4 = loginService.SelectUserAccountAndPass(acc,pass);
			if(is4!=null) {
				index="2";
			}else {
				index="0";
			}
			
		}
		return index+"*"+is5;
	}
	
	
	
//	 ��������
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
		
		 
		
//		�ж��˺��ֻ��Ƿ���ȷ
		if(is == null && is2 == null) {
			password="0";
			System.err.println("�޴��˻�");
		}else if(is == null){
//			��˾�˺�
			String is3 = loginService.SelectCompanyPass(account,phone);
			if(is3!=null) {
				password = is3;
			}else {
				password = "0";
			}	
			
		}else if(is2 == null){
//			�û��˺�
			String is4 = loginService.SelectUserPass(account,phone);
			if(is4!=null) {
				password = is4;
			}else {
				password = "0";
			}
			
		 }
		 
		 return password;
		}
	 
	 
	 
	 
	//�����˺�
		@RequestMapping("ForgetTheAccount")
		public String ForgetTheAccount() {
			return "ForgetTheAccount";
		}
//	 �һ��˺�
		@RequestMapping("getAccount")
		@ResponseBody
		public String getAccount(HttpServletRequest req){
			String account = "";
			String cutype = req.getParameter("cutype");
			String phone = req.getParameter("phone");
			 
			 if(cutype.equals("��˾")) {
				 
				 account = loginService.findCompanyAccountByPhone(phone);
				 if(account == null) {
					 account = "0";
				 }
				 
			 }else if(cutype.equals("�û�")){
				 
				 account = loginService.findUserAccountByPhone(phone);
				 if(account == null) {
					 account = "0";
				 }
				 
			 }
			 
			 
			 
			 return account;
		}
	 
	 
	 }




