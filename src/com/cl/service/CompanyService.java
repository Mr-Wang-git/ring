package com.cl.service;

import java.util.List;

import com.cl.pojo.CompanyInfo;
import com.cl.pojo.Interactive;
import com.cl.pojo.RecruitmentPosition;
import com.cl.pojo.Resume;

public interface CompanyService {

	List<Resume> findSevResume();

	String selectResumeCount();

	List<Resume> findAllResume();

	List<Resume> findSomeResume(String major,String education, String schoolName);

	String SelectConpanyIdByAccount(String account);

	List<Interactive> findAllInteractiveBy2Id(String userid, String comid);

	String findUserNameByid(String userid);

	void insetInteractive(String userid, String comid, String content);

	List<CompanyInfo> findOneCompanyInfo(String comid);

	String selectCompanyName(String acc);

	int FindinfoIdByCAPId(String id);

	void updateCompanyInfo(CompanyInfo cinfo);

	void insertPosition(RecruitmentPosition position);

	void insertBlog(String id, String name, String content, String time);

	List<Interactive> findAllInteractiveById(String id);


}
