package com.cl.controller;


import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.cl.pojo.Admin;
import com.cl.pojo.CompanyAandP;
import com.cl.pojo.CompanyInfo;
import com.cl.pojo.MessageFound;
import com.cl.pojo.RealTimeInfo;
import com.cl.pojo.UserAandP;
import com.cl.pojo.Web;
import com.cl.service.AdminService;
import com.cl.service.SigninService;
import com.cl.service.UserService;


@SuppressWarnings("all")
@RequestMapping("admin")
@Controller
public class AdminController {
	@Autowired
	UserService userService;
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private SigninService signinService;
	
	@RequestMapping("adminlogin")
	public String adminlogin() {
		return "adminlogin";
	}
	
	@RequestMapping("adminLoad")
	public ModelAndView adminLoad(HttpServletRequest req) {
		
		String account = req.getParameter("account");
		String pass = req.getParameter("password");
		
		ModelAndView mv = new ModelAndView();
		
		//web���
		List<Web> web = adminService.FindWEB();
		mv.addObject("web", web);
		//�¼��빫˾
		List<CompanyInfo> com = adminService.FindSevenCompany();
		mv.addObject("companyInfo", com);
		//�����û�
		List<UserAandP> user = adminService.FindAllUser();
		mv.addObject("user", user);
		//��������
		//�û�
		String userSum = adminService.SelectUserAandp();
		//��˾
		String comSum = adminService.SelectCompanyAandp();
		//����
		String messSum = adminService.Selectmessagefound();
		//����
		String activeSum = adminService.Selectinteractive();
		//��Ѷ
		String realtimeinfoSum = adminService.Selectreal_timeinfo();
		//����
		String resumeSum = adminService.Selectresume();
		
		mv.addObject("sum1", userSum);
		mv.addObject("sum2", comSum);
		mv.addObject("sum3", messSum);
		mv.addObject("sum4", activeSum);
		mv.addObject("sum5", realtimeinfoSum);
		mv.addObject("sum6", resumeSum);
		
		req.getSession().setAttribute("sum1", userSum);
		req.getSession().setAttribute("sum2", comSum);
		req.getSession().setAttribute("sum3", messSum);
		req.getSession().setAttribute("sum4", activeSum);
		req.getSession().setAttribute("sum5", realtimeinfoSum);
		req.getSession().setAttribute("sum6", resumeSum);
		
		
		if(account==null||pass==null) {
			String id = (String) req.getSession().getAttribute("AdminId");
			if(id!=null) {
				req.getSession().setAttribute("AdminId", id);
				
				//admin�˺ź�����
				Admin admin = adminService.FindOneByid(id);
				mv.addObject("adminId", admin.getId());
				mv.addObject("adminAccount", admin.getAdminAccount());
				req.getSession().setAttribute("adminAccount", admin.getAdminAccount());
				mv.addObject("adminPassword", admin.getAdminPassword());
				
				mv.setViewName("AdminIndex");
				return mv;
			}else {
				mv.setViewName("adminlogin");
				return mv;
			}
			
		}else {
		
			String id = adminService.findAdminIdByAandP(account,pass);
			System.err.println(id);
			
			mv.addObject("AdminId", id);
			if(id!=null) {
				req.getSession().setAttribute("AdminId", id);
				
				//admin�˺ź�����
				Admin admin = adminService.FindOneByid(id);
				mv.addObject("adminId", admin.getId());
				mv.addObject("adminAccount", admin.getAdminAccount());
				req.getSession().setAttribute("adminAccount", admin.getAdminAccount());
				mv.addObject("adminPassword", admin.getAdminPassword());
				
				
				mv.setViewName("AdminIndex");
				return mv;
			}
		
		}
		mv.setViewName("adminlogin");
		return mv;
	}
	
	
	
	@RequestMapping("userTable")
	public ModelAndView userTable(HttpServletRequest req) {
		
		ModelAndView mv = new ModelAndView();
		
		String account = (String) req.getSession().getAttribute("adminAccount");
		
		List<UserAandP> user = adminService.FindAllUser();
		mv.addObject("user", user);
		mv.addObject("adminAccount", account);
		mv.setViewName("AdminUserTable");
		return mv;
	}
	
	@RequestMapping("companyTable")
	public ModelAndView CompanyTable(HttpServletRequest req) {
		
		ModelAndView mv = new ModelAndView();
		
		String account = (String) req.getSession().getAttribute("adminAccount");
		
		List<CompanyAandP> com = adminService.FindAllCompany();
		mv.addObject("com", com);
		
		mv.addObject("adminAccount", account);
		
		mv.setViewName("AdminCompanyTable");
		return mv;
	}
	
	//ɾ���û�
	@RequestMapping("deleteThis")
	@ResponseBody
	public String deleteThis(HttpServletRequest req) {
		
		String id = req.getParameter("id");
		String rid = req.getParameter("rid");
		String infoid = req.getParameter("infoid");
		
		
		adminService.DeleteUser(id,rid,infoid);
		
		return "true";
		
	}
	
	//�޸��Ñ��ܴa
	@RequestMapping("updateThis")
	@ResponseBody
	public String update(HttpServletRequest req) {
		String id = req.getParameter("id");
		String pass = req.getParameter("password");
		
		System.err.println(id+"-----"+pass);
		
		adminService.UpdateUser(id,pass);
		//�޸�
		
		return "true";
	}
	
	
	//����ͬ
//	�û�
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
	//����Ա
	@RequestMapping("findAdminAccount")
	@ResponseBody
	public String findAdminAccount(HttpServletRequest req) {
		String account = req.getParameter("acc");
		String is = signinService.findAdminAccount(account);
		String isBoolean=null;
		if(is == null) {
			isBoolean = "true";
		}else {
			isBoolean = "false";
		}
		return isBoolean;
	}
//	��˾
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

//	ע���û��˺�
	@RequestMapping("insertUser")
	@ResponseBody
	public String signinUser(HttpServletRequest req) {
		String phone = req.getParameter("phone");
		String pass = req.getParameter("pass");
		String account = req.getParameter("account");
		
		System.err.println(account);
//		��������������
		signinService.signinResume(account,phone);
		signinService.signinUserInfo(account,phone);
//		��ѯ������id
		Integer id1 = signinService.selectResume(account,phone);
		Integer id2 = signinService.selectUserInfo(account,phone);
//		��������
		String id3 =  id1.toString();
		String id4 =  id2.toString();
		signinService.signinUser(account,pass,id3,id4);
		
		return "true";
	}
	
	
	//��˾
	
	//ɾ��
	@RequestMapping("deleteThisCom")
	@ResponseBody
	public String deleteThisCom(HttpServletRequest req) {
		String id = req.getParameter("id");
		String infoid = req.getParameter("infoid");
		System.err.println(id+"*--*"+infoid);
		
		adminService.deleteCompany(id,infoid);
		
		return "true";
	}
	
	//�޸�
		@RequestMapping("updateThisCom")
		@ResponseBody
		public String updateThisCom(HttpServletRequest req) {
			String id = req.getParameter("id");
			String pass = req.getParameter("pass");
			System.err.println(id+"*--*"+pass);
			
			adminService.updateCompany(id,pass);
			
			return "true";
		}
		
	
//		ע�ṫ˾�˺�
		@RequestMapping("addThisCom")
		@ResponseBody
		public String addThisCom(HttpServletRequest req) {
			String acc= req.getParameter("acc");
			String pass=req.getParameter("pass");
			String phone=req.getParameter("phone");
			String legal= req.getParameter("legal");
			
			String address = "�й�";
			
//			����������
			signinService.signinCompanyInfo(phone,legal,address,acc);
			
//			��ѯ������id
			String id = signinService.selectCompanyInfoId(legal,address,acc);
			
//			��������
			signinService.SigninCompany(acc,pass,id);
		
			return "true";
		}
		
		//����
		@RequestMapping("Agordi")
		public ModelAndView Agordi(HttpServletRequest req) {
			ModelAndView mv = Getindex(req);
			
			return mv;
		}
		//ɾ��blog
		@RequestMapping("deleteMess")
		@ResponseBody
		public String deleteMess(HttpServletRequest req) {
			
			String id = req.getParameter("id");
			System.err.println(id+":messid");
			adminService.DeleteMess(id);
			
			return "true";
		}
		//ɾ����Ѷ
		@RequestMapping("deleteNews")
		@ResponseBody
		public String deleteNews(HttpServletRequest req) {
			String id = req.getParameter("id");
			adminService.DeleteNews(id);
			System.err.println(id);
			return "true";
		}
		//�����Ѷ
		@RequestMapping("postNews")
		public String postNews() {
			return "postNews";
		}
		@RequestMapping("insertNews")
		public ModelAndView insertNews(@RequestParam("file") CommonsMultipartFile[] files,HttpServletRequest req) {
			String title = req.getParameter("title");
			String imgName = null;
			for (int i = 0; i < files.length; i++) {
				System.out.println("fileName---------->" + files[i].getOriginalFilename());
				imgName=""+files[i].getOriginalFilename();
				// �ϴ��ľ���·��
				File file = new File("D:\\java_workspace2\\ringEmployment\\WebContent\\EXTERNAL\\img\\" + files[i].getOriginalFilename());
				if (!files[i].isEmpty()) {
					int pre = (int) System.currentTimeMillis();
					try {
						// �õ��������ͬʱ�������ϴ����ļ�
						FileOutputStream os = new FileOutputStream(file);
						// �õ��ϴ��ļ���������
						FileInputStream in = (FileInputStream) files[i].getInputStream();
						// ��д�ֽڵķ�ʽд�ļ�
						int b = 0;
						while ((b = in.read()) != -1) {
							os.write(b);
						}
						os.flush();
						os.close();
						in.close();
						int finaltime = (int) System.currentTimeMillis();
						System.out.println(finaltime - pre + "ms");
					} catch (Exception e) {
						e.printStackTrace();
						System.out.println("�ϴ�����");
					}
				}
			}
			//����
			String content = req.getParameter("content");
			//��ȡʱ��
			 Date date=new Date();
			 DateFormat format=new SimpleDateFormat("yyyy-MM-dd");
			 System.out.println(format.format(date));
			 String time = format.format(date);
			 System.err.println(time);
			 
			 
			System.err.println(title+"----"+imgName+"++++"+content);
			
			adminService.insertNews(title,imgName,content,time);
			
			ModelAndView mv = Getindex(req);
			
			return mv;
			
		}
		
		//��ӹ���Ա
		@RequestMapping("AddAdmin")
		@ResponseBody
		public String AddAdmin(HttpServletRequest req) {
			String acc = req.getParameter("acc");
			String pass = req.getParameter("pass");
			System.err.println("����Ա�˺�"+acc+"����"+pass);
			adminService.AddAdmin(acc,pass);
			return "true";
		}
		
		//��ҳ����
		public ModelAndView Getindex(HttpServletRequest req) {
			ModelAndView mv = new ModelAndView();

			//��ֵ
			mv.addObject("sum1", req.getSession().getAttribute("sum1"));
			mv.addObject("sum2", req.getSession().getAttribute("sum2"));
			mv.addObject("sum3", req.getSession().getAttribute("sum3"));
			mv.addObject("sum4", req.getSession().getAttribute("sum4"));
			mv.addObject("sum5", req.getSession().getAttribute("sum5"));
			mv.addObject("sum6", req.getSession().getAttribute("sum6"));
			//�˺ŵ�¼
			mv.addObject("adminAccount", req.getSession().getAttribute("adminAccount"));
			//��ǰ�˺�
			String id = (String) req.getSession().getAttribute("AdminId");
			Admin admin = adminService.FindOneByid(id);
			mv.addObject("adminId", admin.getId());
			mv.addObject("adminAccount", admin.getAdminAccount());
			req.getSession().setAttribute("adminAccount", admin.getAdminAccount());
			mv.addObject("adminPassword", admin.getAdminPassword());
			//web���
			List<Web> web = adminService.FindWEB();
			mv.addObject("web", web);
//			message/Blog
			List<MessageFound> message = userService.findAllMessage();
			mv.addObject("messa", message);
			 //News
			List<RealTimeInfo> news = userService.findallNews();
		 	mv.addObject("real",news);
			
			mv.setViewName("Agordi");
			
			return mv;
		}
	
	
}
