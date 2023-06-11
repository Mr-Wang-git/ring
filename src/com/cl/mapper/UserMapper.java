package com.cl.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.cl.pojo.Interactive;
import com.cl.pojo.MessageFound;
import com.cl.pojo.RealTimeInfo;
import com.cl.pojo.RecruitmentPosition;
import com.cl.pojo.Resume;
@Mapper
public interface UserMapper {

	Integer selectPositionCount();//查询工作记录总数;

	List<RecruitmentPosition> findSevPosition();

	List<MessageFound> findFourMessage();

	List<Resume> findFourResume();
	List<RecruitmentPosition> findAllPosition();

	List<MessageFound> findAllMessage();

	List<RecruitmentPosition> findSomePosition(@Param("name")String name, @Param("subadge")String subadge, @Param("address")String address);

	String selectUserName(@Param("ACC")String acc);

	String selectUserid(@Param("ACC")String acc);

	void insertBlog(@Param("id")String id, @Param("name")String name, @Param("content")String content, @Param("time")String time);

	List<RealTimeInfo> findAllNews();

	List<RealTimeInfo> findOneNewsByid(@Param("id")String id);

	List<Resume> findOneResumeByaccount(@Param("Account")String account);

	List<Resume> findResumeByid(@Param("id")String id);

	String findCompanyNameByid(@Param("COMID")String comid);

	List<Interactive> findAllInteractiveBy2Id(@Param("USERID")String userid,@Param("COMID") String comid);

	void insetInteractive(@Param("USERID")String userid, @Param("COMID")String comid, @Param("CONTENT")String content);

	void updateUserMy(Resume upResume);

	int FindResumeIdByUAPId(@Param("id")String id);

	List<Interactive> findAllInteractiveById(@Param("id")String userid);
	

	
}
