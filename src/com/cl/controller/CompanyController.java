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

import sun.nio.cs.ext.MacArabic;
@SuppressWarnings("all")
@RequestMapping("company")
@Controller
public class CompanyController {
	
	@Autowired
	UserService userService;
	
	@Autowired
	CompanyService companyService;
	
//	公司首页
	@RequestMapping("index")
	public ModelAndView index(HttpServletRequest req) {
//		用户账号
		String id = (String) req.getSession().getAttribute("companyaccount");
		
//		总工作数
		String Resumecount = companyService.selectResumeCount();
//		简历详细内容
		List<Resume> Resume = companyService.findSevResume();
//		message
		List<MessageFound> message = userService.findFourMessage();
//		优秀公司固定
		
		ModelAndView mv= new ModelAndView();
		mv.addObject("Resumecount",Resumecount);
		mv.addObject("position",Resume);
		mv.addObject("messa", message);
		
		
		mv.setViewName("companyIndex");
		
		return mv;
	}

//	中转
	@RequestMapping("isBoolean")
	@ResponseBody
	public String isBoolean(HttpServletRequest req) {

		req.getSession().setAttribute("major", req.getParameter("major"));
		req.getSession().setAttribute("education", req.getParameter("education"));
		req.getSession().setAttribute("schoolName", req.getParameter("schoolName"));
		
		return "true";
	}
	
	//条件查询简历
	@RequestMapping("whatResume")
	public  ModelAndView whatResume(HttpServletRequest req) {
		 String major = (String) req.getSession().getAttribute("major");
		 String education = (String) req.getSession().getAttribute("education");
		 String schoolName = (String) req.getSession().getAttribute("schoolName");
		 System.err.println(major);
		  System.err.println(education);
		   System.err.println(schoolName);
		   
//		 做判断是否为空为空则真为空
		 if(major==""  || major.equals("") || major.isEmpty()) {
			 major = null;
		 }
		 if(education == "" || education.equals("") || education.isEmpty()){
			 education = null;
		 }
		 if(schoolName == "" || schoolName.equals("") || schoolName.isEmpty()) {
			 schoolName = null;
		 }
		 
		 System.err.println(major);
		  System.err.println(education);
		   System.err.println(schoolName);
			 
			//3.设置分页参数
				String pageNUU = req.getParameter("Page");
				int pageNum = 0;
				 
				if(pageNUU==""||pageNUU.isEmpty()||pageNUU.equals("")) {
					 pageNum = 1; // 页码
				}else {
					 pageNum = Integer.parseInt(pageNUU);
				}
				System.err.println(pageNum);
				 
				if(pageNum == 0) {
					 pageNum = 1; // 页码
				}
				 
			    int pageSize = 5;// 每页显示条数
			     
			    PageHelper.startPage(pageNum,pageSize);
		   
		   
//		 4.搜索工作
//		 首頁  或者   上面值有参则按参查找
		 List<Resume> resume = null;
		 if(major==null&&education==null&&schoolName==null){
			 System.err.println("所有");
			 resume = companyService.findAllResume();
			 
		 }else if(major!=null||education!=null||schoolName!=null){
			 System.err.println("部分");
			 resume = companyService.findSomeResume(major,education,schoolName);
		 }
		 
		 System.err.println(resume);
		 
		 
		//5.把用户数据封装到PageInfo分页结果对象
	     PageInfo<Resume> page = new PageInfo<>(resume);
		 
		 
		 ModelAndView mv= new ModelAndView();
		 
		mv.addObject("resume", page.getList());
		mv.addObject("pageNum",page.getPageNum());
		mv.addObject("isHasPreviousPage", page.isHasPreviousPage());
		mv.addObject("isHasNextPage", page.isHasNextPage());
		 
		 mv.setViewName("whatResume");
		 
		 return mv;
	 }
	
//	 公司简历
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
	
//	 简历详细
	 @RequestMapping("Others")
	 public ModelAndView Others(HttpServletRequest req) {
		String id = req.getParameter("id");
//		查找简历
		List<Resume> resume = userService.findResumeByid(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("resume", resume);
		mv.setViewName("companyOtherResume");
		
		return mv;
	 }
 
//	 找工作
	 @RequestMapping("resumes")
	public ModelAndView job(HttpServletRequest req) {
		 
	//3.设置分页参数
		String pageNUU = req.getParameter("Page");
		int pageNum = 0;
		 
		if(pageNUU==""||pageNUU.isEmpty()||pageNUU.equals("")) {
			 pageNum = 1; // 页码
		}else {
			 pageNum = Integer.parseInt(pageNUU);
		}
		System.err.println(pageNum);
		 
		if(pageNum == 0) {
			 pageNum = 1; // 页码
		}
		 
	    int pageSize = 5;// 每页显示条数
	     
	    PageHelper.startPage(pageNum,pageSize);
		 
		List<Resume> Resume = companyService.findAllResume();
		 
		//5.把用户数据封装到PageInfo分页结果对象
	     PageInfo<Resume> page = new PageInfo<>(Resume);
		 
		
		
		ModelAndView mv= new ModelAndView();
		 
		mv.addObject("resume", page.getList());
		mv.addObject("pageNum",page.getPageNum());
		mv.addObject("isHasPreviousPage", page.isHasPreviousPage());
		mv.addObject("isHasNextPage", page.isHasNextPage());
		
		mv.setViewName("resume");
		 
		return mv;
		 
	 }

//	 交流
	//发布
		 @RequestMapping("postBlog")
		 @ResponseBody
		 public String postBlog(HttpServletRequest req) {
			 //获取用户名和id
			 String acc = (String) req.getSession().getAttribute("companyaccount");
			 
			 String name = companyService.selectCompanyName(acc);
			 String id = companyService.SelectConpanyIdByAccount(acc);
			 
			 System.err.println(name+"idddddd"+id);
			 //获取内容
			 String content =  req.getParameter("content");
			 System.err.println(content);
			 //获取时间
			 Date date=new Date();
			 DateFormat format=new SimpleDateFormat("yyyy-MM-dd");
			 System.out.println(format.format(date));
			 String time = format.format(date);
			 System.err.println(time);
			 //存值
			 companyService.insertBlog(id,name,content,time);
			 
			 return "true";
		 }
	
//	查值
	 @RequestMapping("blog")
	 public ModelAndView blog(HttpServletRequest req) {
		 
		 String id = (String) req.getSession().getAttribute("companyaccount");
		 req.getSession().setAttribute("account", id);
		 
//		message
		List<MessageFound> message = userService.findAllMessage();
		 
		 ModelAndView mv= new ModelAndView();
		 
		 mv.addObject("messa", message);
		 
		 mv.setViewName("blog");
		 
		 return mv;
	 }
	 
//	 新闻页面
	 @RequestMapping("news")
	 public ModelAndView news() {
	 	List<RealTimeInfo> news = userService.findallNews();
	 	ModelAndView mv = new ModelAndView();
	 	mv.addObject("newss",news);
	 	
	 	mv.setViewName("news");
	 	
		return mv;
	 } 
//	 新闻详情
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
//	我需要
	String userid  = null;
	@RequestMapping("iWhat")
	public ModelAndView iWhat(HttpServletRequest req) {
		
		List<Interactive> inter = null;
		String name = null;
//		公司id
		String account = (String) req.getSession().getAttribute("companyaccount");
		String comid = companyService.SelectConpanyIdByAccount(account);
		
		req.getSession().setAttribute("comid", comid);
		
		userid = req.getParameter("id");
		
		inter = companyService.findAllInteractiveBy2Id(userid,comid);
		System.err.println(userid);
		
		if(userid!=null) {
			 name = companyService.findUserNameByid(userid);
			 inter = companyService.findAllInteractiveBy2Id(userid,comid);
			 
			 req.getSession().setAttribute("userid", userid);
			 
		}else {
			
			userid = (String) req.getSession().getAttribute("userid");
			
			name = companyService.findUserNameByid(userid);
			inter = companyService.findAllInteractiveBy2Id(userid,comid);
			
		}
		
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("name", name);
		mv.addObject("mess", inter);
		mv.setViewName("comIwhat");
		
		return mv;
	}
//	发留言消息
	@RequestMapping("postMessage")
	@ResponseBody
	public String postMessage(HttpServletRequest req) {
		String content = req.getParameter("content");
		
		userid = (String) req.getSession().getAttribute("userid");
		
		String comid = (String) req.getSession().getAttribute("comid");
		
		companyService.insetInteractive(userid,comid,content);
		
		return "true";
	}
//	个人界面
	@RequestMapping("userMy")
	public ModelAndView userMy(HttpServletRequest req) {
		String comAccount = (String) req.getSession().getAttribute("companyaccount");
		String id = companyService.SelectConpanyIdByAccount(comAccount);
		
		String comid = companyService.SelectConpanyIdByAccount(comAccount);
		
		List<CompanyInfo> cominfo = companyService.findOneCompanyInfo(comid);
		List<Interactive> mess = companyService.findAllInteractiveById(id);
		System.err.println(mess);
		
		
		
		System.err.println(cominfo);
		ModelAndView mv = new ModelAndView();
		mv.addObject("mess", mess);
		mv.addObject("cominfo", cominfo);
		mv.setViewName("companyMy");
		return mv;
	}
//	修改公司
	@RequestMapping("updateCompanyMy")
	public ModelAndView updateCompanyMy(HttpServletRequest req) {
	String comAccount = (String) req.getSession().getAttribute("companyaccount");
		
		String comid = companyService.SelectConpanyIdByAccount(comAccount);
		
		List<CompanyInfo> cominfo = companyService.findOneCompanyInfo(comid);
		
		System.err.println(cominfo);
		ModelAndView mv = new ModelAndView();
		mv.addObject("cominfo", cominfo);
		mv.setViewName("updateCompanyMy");
		return mv;
	}
//	修改
	@RequestMapping("updateMy")
	public ModelAndView updateMy(@RequestParam("file") CommonsMultipartFile[] files, HttpServletRequest req) {
		String imgName = null;
		for (int i = 0; i < files.length; i++) {
			System.out.println("fileName---------->" + files[i].getOriginalFilename());
			SimpleDateFormat fmt = new SimpleDateFormat("HH点mm");
			imgName=""+files[i].getOriginalFilename();
			// 上传的绝对路径
			File file = new File(
					"D:\\java_workspace2\\ringEmployment\\WebContent\\EXTERNAL\\img\\" + files[i].getOriginalFilename());
			if (!files[i].isEmpty()) {
				int pre = (int) System.currentTimeMillis();
				try {
					// 拿到输出流，同时重命名上传的文件
					FileOutputStream os = new FileOutputStream(file);
					// 拿到上传文件的输入流
					FileInputStream in = (FileInputStream) files[i].getInputStream();
					// 以写字节的方式写文件
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
					System.out.println("上传出错");
				}
			}
		}
		
		System.err.println(imgName);
		
		if(imgName==null||imgName==""||imgName.isEmpty()) {
			imgName = req.getParameter("oldIMG");
		}
		
		System.err.println(req.getParameter("oldIMG"));
		System.err.println(imgName);
		
		String account = (String) req.getSession().getAttribute("companyaccount");
		System.err.println(account);
		
		req.getSession().setAttribute("companyaccount", account);
		
		String companyName = req.getParameter("companyName");
		String legalrep = req.getParameter("legalRep");
		String capital = req.getParameter("capital");
		String incorTime = req.getParameter("incorTime");
		String email = req.getParameter("email");
		String phone = req.getParameter("phone");
		
		String officeAddress = req.getParameter("officeAddress");
		//地址
		if(officeAddress.isEmpty()|| officeAddress == "" ||officeAddress.equals("")) {
			officeAddress = req.getParameter("address");
		}
		
		
		String officialWebsite = req.getParameter("officialWebsite");
		
		String id = companyService.SelectConpanyIdByAccount(account);
		int Id = Integer.parseInt(id);
		Id  = companyService.FindinfoIdByCAPId(id);
		
		
			
		CompanyInfo cinfo = new CompanyInfo();
		cinfo.setId(Id);
		cinfo.setImg(imgName);
		cinfo.setCompanyName(companyName);
		cinfo.setLegalRep(legalrep);
		cinfo.setCapital(capital);
		cinfo.setIncorTime(incorTime);
		cinfo.setEmail(email);
		cinfo.setPhone(phone);
		cinfo.setOfficeAddress(officeAddress);
		cinfo.setOfficialWebsite(officialWebsite);
		
		
		companyService.updateCompanyInfo(cinfo);
		
		
		List<CompanyInfo> cominfo = companyService.findOneCompanyInfo(id);
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("cominfo", cominfo);
		mv.setViewName("companyMy");
		
		return mv;
	}
//	发布工作
	@RequestMapping("new-postjob")
	public String postjob() {
		return "newPostJob";
	}
	@RequestMapping("insertJob")
	public ModelAndView insertJob(HttpServletRequest req) {
		
		String requirement = req.getParameter("requirement");
		String salary = req.getParameter("salary");
		String positionName = req.getParameter("positionName");
		String subadge = req.getParameter("subadge");
		String address = req.getParameter("address");
		
		String account = (String) req.getSession().getAttribute("companyaccount");
		String com_id = companyService.SelectConpanyIdByAccount(account);
		
		
		
		RecruitmentPosition position = new RecruitmentPosition();
		position.setRequirement(requirement);
		position.setSalary(salary);
		position.setPositionName(positionName);
		position.setSubadge(subadge);
		position.setAddress(address);
		position.setCom_id(com_id);
		
		System.err.println(position);
		companyService.insertPosition(position);
		
		
//		总工作数
		String Resumecount = companyService.selectResumeCount();
//		简历详细内容
		List<Resume> Resume = companyService.findSevResume();
//		message
		List<MessageFound> message = userService.findFourMessage();
//		优秀公司固定
		
		ModelAndView mv= new ModelAndView();
		
		mv.addObject("Resumecount",Resumecount);
		mv.addObject("position",Resume);
		mv.addObject("messa", message);
		
		
		mv.setViewName("companyIndex");
		
		return mv;
		
		
	}
	 
	
}
