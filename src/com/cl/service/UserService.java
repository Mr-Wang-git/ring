package com.cl.service;

import java.util.List;

import com.cl.pojo.Interactive;
import com.cl.pojo.MessageFound;
import com.cl.pojo.RealTimeInfo;
import com.cl.pojo.RecruitmentPosition;
import com.cl.pojo.Resume;

public interface UserService {

	String selectPositionCount();

	List<RecruitmentPosition> findSevPosition();

	List<MessageFound> findFourMessage();

	List<Resume> findFourResume();


	List<RecruitmentPosition> findAllPosition();

	List<MessageFound> findAllMessage();

	List<RecruitmentPosition> findSomePosition(String name, String subadge, String address);

	String selectUserName(String id);

	String selectUserid(String acc);

	void insertBlog(String id, String name, String content, String time);

	List<RealTimeInfo> findallNews();

	List<RealTimeInfo> findOneNewsByid(String id);

	List<Resume> findOneResumeByaccount(String account);

	List<Resume> findResumeByid(String id);

	String findCompanyNameByid(String comid);

	List<Interactive> findAllInteractiveBy2Id(String userid, String comid);

	void insetInteractive(String userid, String comid, String content);

	void updateUserMy(Resume upResume);

	int FindResumeIdByUAPId(String id);

	List<Interactive> findAllInteractiveById(String userid);

	
}
