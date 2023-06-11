package com.cl.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.cl.pojo.CompanyInfo;
import com.cl.pojo.Interactive;
import com.cl.pojo.RecruitmentPosition;
import com.cl.pojo.Resume;

public interface CompanyMapper {

	List<Resume> findSevResume();

	String selectResumeCount();

	List<Resume> findAllResume();

	List<Resume> findSomeResume(@Param("major")String major, @Param("education")String education, @Param("schoolName")String schoolName);

	String SelectConpanyIdByAccount(@Param("account")String account);

	List<Interactive> findAllInteractiveBy2Id(@Param("USERID")String userid,@Param("COMID") String comid);

	String findUserNameByid(@Param("USERID")String userid);

	void insetInteractive(@Param("USERID")String userid, @Param("COMID")String comid, @Param("CONTENT")String content);

	List<CompanyInfo> findOneCompanyInfo(@Param("COMID")String comid);

	String selectCompanyName(@Param("ACC")String acc);

	int FindinfoIdByCAPId(@Param("id")String id);

	void updateCompanyInfo(CompanyInfo cinfo);

	void insertPosition(RecruitmentPosition position);

	void insertBlog(@Param("id")String id, @Param("name")String name, @Param("content")String content, @Param("time")String time);

	List<Interactive> findAllInteractiveById(@Param("id")String id);

}
