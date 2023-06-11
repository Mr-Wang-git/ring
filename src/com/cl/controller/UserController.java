package com.cl.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.javassist.compiler.SyntaxError;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.cl.pojo.CompanyInfo;
import com.cl.pojo.Interactive;
import com.cl.pojo.MessageFound;
import com.cl.pojo.RealTimeInfo;
import com.cl.pojo.RecruitmentPosition;
import com.cl.pojo.Resume;
import com.cl.service.CompanyService;
import com.cl.service.UserService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import sun.rmi.transport.proxy.HttpReceiveSocket;

@SuppressWarnings("all")
@RequestMapping("user")
@Controller
public class UserController {
	@Autowired
	private UserService userService ;
	
	@Autowired
	private CompanyService companyService;
//	�û���ҳ
	@RequestMapping("index")
	public ModelAndView index(HttpServletRequest req) {
//		�û��˺�
		String id = (String) req.getSession().getAttribute("useraccount");
		System.err.println(id);
//		�ܹ�����
		String jobcount = userService.selectPositionCount();
//		������ϸ����
		List<RecruitmentPosition> position = userService.findSevPosition();
//		message
		List<MessageFound> message = userService.findFourMessage();
//		����
		List<Resume> resume = userService.findFourResume();
		
		ModelAndView mv= new ModelAndView();
		mv.addObject("jobcount",jobcount);
		mv.addObject("position",position);
		mv.addObject("messa", message);
		mv.addObject("resume", resume);
		
		
		mv.setViewName("userIndex");
		
		return mv;
	}
	
	
//	user��ת
	@RequestMapping("isBoolean")
	@ResponseBody
	public String isBoolean(HttpServletRequest req) {
//		�ҹ�����ת
		String name = req.getParameter("name");
		String subadge = req.getParameter("subadge");
		String address = req.getParameter("address");
		
		req.getSession().setAttribute("name", name);
		req.getSession().setAttribute("subadge", subadge);
		req.getSession().setAttribute("address", address);

		return "true";
	}

	
	
//	�ҹ���
	 @RequestMapping("whatJob")
	 public ModelAndView jobs(HttpServletRequest req) {
		 String name = (String) req.getSession().getAttribute("name");
		 String subadge = (String) req.getSession().getAttribute("subadge");
		 String address = (String) req.getSession().getAttribute("address");
//		 ���ж��Ƿ�Ϊ��Ϊ������Ϊ��
		 if(name==""|| name.equals("")||name==null||name.isEmpty()) {
			 name = null;
		 }else {
			 name="%"+name+"%";
		 } 
		 if(subadge == ""|| subadge.equals("")||subadge==null||subadge.isEmpty()){
			 subadge = null;
		 }else {
			 subadge = "%"+subadge+"%";
		 } 
		 if(address == ""|| address.equals("") ||address==null||address.isEmpty()) {
			 address = null;
		 }else {
			 address = "%"+address+"%";
		 }
//		 ��������
//		 ���  ����   ����ֵ�в��򰴲β���
		 
		//3.���÷�ҳ����
		 String pageNUU = req.getParameter("Page");
		 int pageNum = 0;
		 
		 if(pageNUU==""||pageNUU.isEmpty()||pageNUU.equals("")) {
			 pageNum = 1; // ҳ��
		 }else {
			 pageNum = Integer.parseInt(pageNUU);
		 }
		 System.err.println(pageNum);
		 
		 if(pageNum == 0) {
			 pageNum = 1; // ҳ��
		 }
		 
	     int pageSize = 5;// ÿҳ��ʾ����
	     
	     PageHelper.startPage(pageNum,pageSize);
		 
		 
		 List<RecruitmentPosition> position = null;
		 if(name==null&&subadge==null&&address==null){
			 System.err.println("����");
			 position = userService.findAllPosition();
		 }else if(name!=null||subadge!=null||address!=null){
			 System.err.println("����");
			 position = userService.findSomePosition(name,subadge,address);
		 }
		 
		//5.���û����ݷ�װ��PageInfo��ҳ�������
	     PageInfo<RecruitmentPosition> page = new PageInfo<>(position);
		 
		 System.err.println(position);
		 
		 ModelAndView mv= new ModelAndView();
		 
		 mv.addObject("position", page.getList());
		 mv.addObject("pageNum",page.getPageNum());
		 mv.addObject("isHasPreviousPage", page.isHasPreviousPage());
		 mv.addObject("isHasNextPage", page.isHasNextPage());
		 
		 mv.setViewName("whatJob2");
		 
		 return mv;
	 }
	 
//	 �ҹ���
	 @RequestMapping("jobs")
	 public ModelAndView job(HttpServletRequest req) {
		 
		//3.���÷�ҳ����
		 String pageNUU = req.getParameter("Page");
		 int pageNum = 0;
		 
		 if(pageNUU==""||pageNUU.isEmpty()||pageNUU.equals("")) {
			 pageNum = 1; // ҳ��
		 }else {
			 pageNum = Integer.parseInt(pageNUU);
		 }
		 System.err.println(pageNum);
		 
		 if(pageNum == 0) {
			 pageNum = 1; // ҳ��
		 }
		 
	     int pageSize = 5;// ÿҳ��ʾ����
	     
	     PageHelper.startPage(pageNum,pageSize);

	     
		 List<RecruitmentPosition> position = null;
		 position = userService.findAllPosition();
		 
		 
		 //5.���û����ݷ�װ��PageInfo��ҳ�������
	      PageInfo<RecruitmentPosition> page = new PageInfo<>(position);
	      
	      System.out.println("��ǰҳ��="+page.getPageNum());
	       System.out.println("ÿҳ��ʾ����="+page.getPageSize());
	       System.out.println("��ǰҳ��ʼ�к�="+page.getStartRow());
	        System.out.println("��ǰҳ�����к�="+page.getEndRow());
	        System.out.println("�ܼ�¼��="+page.getTotal());
	        System.out.println("��ҳ��="+page.getPages());
	        System.out.println("�Ƿ�Ϊ��1ҳ="+page.isIsFirstPage());
	        System.out.println("�Ƿ�Ϊ���1ҳ="+page.isIsLastPage());
	        System.out.println("�Ƿ�����һҳ="+page.isHasPreviousPage());
	        System.out.println("�Ƿ�����һҳ="+page.isHasNextPage());
	        System.out.println("��ǰҳ����=");
	        for(RecruitmentPosition position2: page.getList()){
	            System.out.println(position2);
	        }
		 
	        
	        
	        
	        
		 ModelAndView mv= new ModelAndView();
		 
		 mv.addObject("position", page.getList());
		 mv.addObject("pageNum",page.getPageNum());
		 mv.addObject("isHasPreviousPage", page.isHasPreviousPage());
		 mv.addObject("isHasNextPage", page.isHasNextPage());
		 
		 mv.setViewName("Job");
		 
		 return mv;
		 
	 }
	 
//	 ��˾���
	 @RequestMapping("company")
	 public ModelAndView otherResume(HttpServletRequest req) {
		 String id = req.getParameter("id");
			List<CompanyInfo> cominfo = companyService.findOneCompanyInfo(id);
			
			System.err.println(cominfo);
			
			ModelAndView mv = new ModelAndView();
			
			mv.addObject("cominfo", cominfo);
			mv.setViewName("companyInfo");
		
		return mv;
		

	 }
	 
	 
//	    ��˾��ϸ
	 @RequestMapping("Others")
	 public ModelAndView Others(HttpServletRequest req) {
		 String id = req.getParameter("id");
//			���Ҽ���
			List<Resume> resume = userService.findResumeByid(id);
			ModelAndView mv = new ModelAndView();
			mv.addObject("resume", resume);
			mv.setViewName("userOtherResume");
			
			return mv;
	
	 }
	 
	 
	 
	 
//	 ����
	 
	 //����
	 @RequestMapping("postBlog")
	 @ResponseBody
	 public String postBlog(HttpServletRequest req) {
		 //��ȡ�û�����id
		 String acc = (String) req.getSession().getAttribute("useraccount");
		 String name = userService.selectUserName(acc);
		 
		 String id = userService.selectUserid(acc);
		 System.err.println(name+"idddddd"+id);
		 //��ȡ����
		 String content =  req.getParameter("content");
		 System.err.println(content);
		 //��ȡʱ��
		 Date date=new Date();
		 DateFormat format=new SimpleDateFormat("yyyy-MM-dd");
		 System.out.println(format.format(date));
		 String time = format.format(date);
		 System.err.println(time);
		 //��ֵ
		 userService.insertBlog(id,name,content,time);
		 
		 
		 
		 return "true";
	 }
	 
	 //ҳ��
	 @RequestMapping("blog")
	 public ModelAndView blog(HttpServletRequest req) {
		 
		String id = (String) req.getSession().getAttribute("useraccount");
		req.getSession().setAttribute("account", id);
		 
//		message
		List<MessageFound> message = userService.findAllMessage();
		 
		ModelAndView mv= new ModelAndView();
		 
		mv.addObject("messa", message);
		 
		mv.setViewName("blog");
		 
		return mv;
	 }
	 
	 
	 
//	 ��������
	 @RequestMapping("userMy")
	 public ModelAndView userMy(HttpServletRequest req) {
		 
		 String account = (String) req.getSession().getAttribute("useraccount");
		 System.err.println(account);
		 
		 
		 
		 List<Resume> resume = userService.findOneResumeByaccount(account);
		 System.err.println(resume);
		 
		 //��ѯ���й�˾��������
		 String userid = userService.selectUserid(account);
		 List<Interactive> mess = userService.findAllInteractiveById(userid);
		 
		 ModelAndView mv = new ModelAndView();
		 mv.addObject("mess", mess);
		 mv.addObject("resume",resume);
		 mv.setViewName("userMy");
		 
		 return mv;
	 }
	 
	 
	 
	 
//	 ����ҳ��
	 @RequestMapping("news")
	 public ModelAndView news() {
	 	List<RealTimeInfo> news = userService.findallNews();
	 	ModelAndView mv = new ModelAndView();
	 	mv.addObject("newss",news);
	 	
	 	mv.setViewName("news");
	 	
		return mv;
	 }
	 
//	 ��������
	@RequestMapping("newsDetails")
	public ModelAndView newsDetails(HttpServletRequest req){
		String id = req.getParameter("id");
		
		List<RealTimeInfo> news = userService.findOneNewsByid(id);
		
		System.err.println(news);
		ModelAndView mv = new ModelAndView();
		mv.addObject("newss",news);
		mv.setViewName("newsDetails");
		return mv;
	}
	

	
//	����Ҫ
	String comid = null;
	@RequestMapping("iWhat")
	public ModelAndView iWhat(HttpServletRequest req) {
		
		List<Interactive> inter = null;
		String name = null;
		
//		��ȡ�û�id
		String useraccount = (String) req.getSession().getAttribute("useraccount");
		String userid = userService.selectUserid(useraccount);
		req.getSession().setAttribute("userid", userid);
		
		inter = userService.findAllInteractiveBy2Id(userid,comid);
//		��ȡ��˾id
		comid = req.getParameter("id");
		
		//��˾id��Ϊ��ʱ
		if(comid!=null) {
//			��ֵ
			name = userService.findCompanyNameByid(comid);
			inter = userService.findAllInteractiveBy2Id(userid,comid);
			
			//session���湫˾id
			req.getSession().setAttribute("comid", comid);
		}else {
//			��˾id��ȡ����ʱ
			comid = (String) req.getSession().getAttribute("comid");
//			��ֵ
			name = userService.findCompanyNameByid(comid);
			inter = userService.findAllInteractiveBy2Id(userid,comid);
			
		}
		
	
		ModelAndView mv = new ModelAndView();
		mv.addObject("name", name);
		mv.addObject("mess", inter);
		mv.setViewName("userIWhat");
		
		return mv;
	}
	
//	������
	@RequestMapping("postMessage")
	@ResponseBody
	public String postMessage(HttpServletRequest req) {
		String content = req.getParameter("content");
		
		String userid  = (String) req.getSession().getAttribute("userid");
		 comid = (String) req.getSession().getAttribute("comid");
		
		userService.insetInteractive(userid,comid,content);
		
		return "true";
	}
	
	@RequestMapping("updateUserMy")
	public ModelAndView updateUserMy(HttpServletRequest req) {
		
		ModelAndView mv = new ModelAndView();
		String account = (String) req.getSession().getAttribute("useraccount");
		List<Resume> resume = userService.findOneResumeByaccount(account);
		
		mv.addObject("resume", resume);
		mv.setViewName("updateUserMy");
		return mv;
	}
	
	
	 //�޸��Լ�
	@RequestMapping("updateMy")
	public ModelAndView updateMy(@RequestParam("file") CommonsMultipartFile[] files, HttpServletRequest req) {
		String imgName = null;
		for (int i = 0; i < files.length; i++) {
			
			System.out.println("fileName---------->" + files[i].getOriginalFilename());
			SimpleDateFormat fmt = new SimpleDateFormat("HH��mm");
			imgName=""+files[i].getOriginalFilename();
			// �ϴ��ľ���·��
			
			File file = new File(
					"D:\\java_workspace2\\ringEmployment\\WebContent\\EXTERNAL\\img\\" + files[i].getOriginalFilename());
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
		
		System.err.println(imgName);
		
		if(imgName==null||imgName==""||imgName.isEmpty()) {
			imgName = req.getParameter("oldIMG");
		}
		
		System.err.println(req.getParameter("oldIMG"));
		System.err.println(imgName);
		
		String account = (String) req.getSession().getAttribute("useraccount");
		System.err.println(account);
		
		req.getSession().setAttribute("useraccount", account);
		
		
		String phone = req.getParameter("phone");
		String email = req.getParameter("email");
	
		String name = req.getParameter("name");
		String birthday = req.getParameter("birthday");
		String sex = req.getParameter("sex");
		String outlook = req.getParameter("outlook");
		
		//��ַ
		String household = req.getParameter("household");
		if(household.isEmpty()|| household == "" ||household.equals("")) {
			household = req.getParameter("address");
		}
		
		String education = req.getParameter("education");
		String edu_time = req.getParameter("edu_time");
		String schoolName = req.getParameter("schoolName");
		String major = req.getParameter("major");
		String majorKnow = req.getParameter("majorKnow");
		
		String position_time = req.getParameter("position_time");
		String companyName = req.getParameter("companyName");
		String position = req.getParameter("position");
		
		String certificateBookName = req.getParameter("certificateBookName");
		String honor = req.getParameter("honor");
		String evaluation = req.getParameter("evaluation");
		String salary = req.getParameter("salary");
		
		String id = userService.selectUserid(account);
		int Id = Integer.parseInt(id);
		 Id  = userService.FindResumeIdByUAPId(id);
		
		
		Resume upResume = new Resume();
		upResume.setId(Id);
		upResume.setPhone(phone);
		upResume.setEmail(email);
		upResume.setImg(imgName);
		upResume.setName(name);
		upResume.setBirthday(birthday);
		upResume.setSex(sex);
		upResume.setOutlook(outlook);
		upResume.setHousehold(household);
		upResume.setEducation(education);
		upResume.setEdu_time(edu_time);
		upResume.setSchoolName(schoolName);
		upResume.setMajor(major);
		upResume.setMajorKnow(majorKnow);
		upResume.setPosition_time(position_time);
		upResume.setCompanyName(companyName);
		upResume.setPosition(position);
		upResume.setCertificateBookName(certificateBookName);
		upResume.setHonor(honor);
		upResume.setEvaluation(evaluation);
		upResume.setSalary(salary);
		
		System.err.println(upResume);
		userService.updateUserMy(upResume);
		
		List<Resume> resume = userService.findOneResumeByaccount(account);
		ModelAndView mv = new ModelAndView();
		mv.addObject("resume", resume);
		mv.setViewName("userMy");
		return mv;
	}

	 
}
