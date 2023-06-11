package com.cl.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cl.mapper.UserMapper;
import com.cl.pojo.Interactive;
import com.cl.pojo.MessageFound;
import com.cl.pojo.RealTimeInfo;
import com.cl.pojo.RecruitmentPosition;
import com.cl.pojo.Resume;
import com.cl.service.UserService;
@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserMapper userMapper;
	
	@Override
	public String selectPositionCount() {
		Integer id = userMapper.selectPositionCount();
		String count = id.toString();
		return count;
	}

	@Override
	public List<RecruitmentPosition> findSevPosition() {
		List<RecruitmentPosition> pots = userMapper.findSevPosition();
		return pots;
	}

	@Override
	public List<MessageFound> findFourMessage() {
		List<MessageFound> mess = userMapper.findFourMessage();
		return mess;
	}

	@Override
	public List<Resume> findFourResume() {
		return userMapper.findFourResume();
	}

	@Override
	public List<RecruitmentPosition> findAllPosition() {
		// TODO Auto-generated method stub
		return userMapper.findAllPosition();
	}

	@Override
	public List<MessageFound> findAllMessage() {
		// TODO Auto-generated method stub
		return userMapper.findAllMessage();
	}

	@Override
	public List<RecruitmentPosition> findSomePosition(String name, String subadge, String address) {
		// TODO Auto-generated method stub
		return userMapper.findSomePosition(name,subadge,address);
	}

	@Override
	public String selectUserName(String id) {
		// TODO Auto-generated method stub
		return userMapper.selectUserName(id);
	}

	@Override
	public String selectUserid(String acc) {
		// TODO Auto-generated method stub
		return userMapper.selectUserid(acc);
	}

	@Override
	public void insertBlog(String id, String name, String content, String time) {
		// TODO Auto-generated method stub
		userMapper.insertBlog(id,name,content,time);
	}

	@Override
	public List<RealTimeInfo> findallNews() {
		// TODO Auto-generated method stub
		return userMapper.findAllNews();
	}

	@Override
	public List<RealTimeInfo> findOneNewsByid(String id) {
		// TODO Auto-generated method stub
		return userMapper.findOneNewsByid(id);
	}

	@Override
	public List<Resume> findOneResumeByaccount(String account) {
		// TODO Auto-generated method stub
		return userMapper.findOneResumeByaccount(account);
	}

	@Override
	public List<Resume> findResumeByid(String id) {
		// TODO Auto-generated method stub
		return userMapper.findResumeByid(id);
	}

	@Override
	public String findCompanyNameByid(String comid) {
		// TODO Auto-generated method stub
		return userMapper.findCompanyNameByid(comid);
	}

	@Override
	public List<Interactive> findAllInteractiveBy2Id(String userid, String comid) {
		return userMapper.findAllInteractiveBy2Id(userid,comid);
	}

	@Override
	public void insetInteractive(String userid, String comid, String content) {
		// TODO Auto-generated method stub
		userMapper.insetInteractive(userid,comid,content);
	}

	@Override
	public void updateUserMy(Resume upResume) {
		// TODO Auto-generated method stub
		userMapper.updateUserMy(upResume);
	}

	@Override
	public int FindResumeIdByUAPId(String id) {
		// TODO Auto-generated method stub
		return userMapper.FindResumeIdByUAPId(id);
	}

	@Override
	public List<Interactive> findAllInteractiveById(String userid) {
		// TODO Auto-generated method stub
		return userMapper.findAllInteractiveById(userid);
	}

	
	
	
	
	

	

}
