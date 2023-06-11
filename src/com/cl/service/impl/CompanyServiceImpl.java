package com.cl.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cl.mapper.CompanyMapper;
import com.cl.pojo.CompanyInfo;
import com.cl.pojo.Interactive;
import com.cl.pojo.RecruitmentPosition;
import com.cl.pojo.Resume;
import com.cl.service.CompanyService;

@Service
public class CompanyServiceImpl implements CompanyService{
	@Autowired
	CompanyMapper companyMapper;

	@Override
	public List<Resume> findSevResume() {
		// TODO Auto-generated method stub
		return companyMapper.findSevResume();
	}

	@Override
	public String selectResumeCount() {
		// TODO Auto-generated method stub
		return companyMapper.selectResumeCount();
	}

	@Override
	public List<Resume> findAllResume() {
		// TODO Auto-generated method stub
		return companyMapper.findAllResume();
	}

	@Override
	public List<Resume> findSomeResume(String majo, String educatio, String schoolNam) {
		String education = null;
		String major = null;
		String schoolName =null;
		if(educatio!=null) {
			 education = "%"+educatio+"%";
		}
		if(majo!=null) {
			major = "%"+majo+"%";
		}
		if(schoolNam!=null) {
			 schoolName = "%"+schoolNam+"%";
		}
	
		
		
		return companyMapper.findSomeResume(major,education,schoolName);
	}

	@Override
	public String SelectConpanyIdByAccount(String account) {
		// TODO Auto-generated method stub
		return companyMapper.SelectConpanyIdByAccount(account);
	}

	@Override
	public List<Interactive> findAllInteractiveBy2Id(String userid, String comid) {
		// TODO Auto-generated method stub
		return companyMapper.findAllInteractiveBy2Id(userid,comid);
	}

	@Override
	public String findUserNameByid(String userid) {
		// TODO Auto-generated method stub
		return companyMapper.findUserNameByid(userid);
	}

	@Override
	public void insetInteractive(String userid, String comid, String content) {
		// TODO Auto-generated method stub
		companyMapper.insetInteractive(userid,comid,content);
	}

	@Override
	public List<CompanyInfo> findOneCompanyInfo(String comid) {
		// TODO Auto-generated method stub
		return companyMapper.findOneCompanyInfo(comid);
	}

	@Override
	public String selectCompanyName(String acc) {
		// TODO Auto-generated method stub
		return companyMapper.selectCompanyName(acc);
	}

	@Override
	public int FindinfoIdByCAPId(String id) {
		// TODO Auto-generated method stub
		return companyMapper.FindinfoIdByCAPId(id);
	}

	@Override
	public void updateCompanyInfo(CompanyInfo cinfo) {
		// TODO Auto-generated method stub
		companyMapper.updateCompanyInfo(cinfo);
	}

	@Override
	public void insertPosition(RecruitmentPosition position) {
		// TODO Auto-generated method stub
		companyMapper.insertPosition(position);
	}

	@Override
	public void insertBlog(String id, String name, String content, String time) {
		// TODO Auto-generated method stub
		companyMapper.insertBlog(id,name,content,time);
	}

	@Override
	public List<Interactive> findAllInteractiveById(String id) {
		// TODO Auto-generated method stub
		return companyMapper.findAllInteractiveById(id);
	}

	
}
