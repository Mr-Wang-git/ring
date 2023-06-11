package com.cl.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cl.mapper.SigninMapper;
import com.cl.service.SigninService;

@Service
public class SigninServiceImpl implements SigninService{

	@Autowired
	SigninMapper sigMapper;

	@Override
	public void signinUser(String account, String pass, String id3, String id4) {
		// TODO Auto-generated method stub
		sigMapper.signinUser(account,pass,id3,id4);
	}

	@Override
	public void signinResume(String email, String phone) {
		// TODO Auto-generated method stub
		sigMapper.signinResume(email,phone);
	}

	@Override
	public void signinUserInfo(String email, String phone) {
		// TODO Auto-generated method stub
		sigMapper.signinUserInfo(email,phone);
	}

	@Override
	public Integer selectResume(String email, String phone) {
		Integer id = sigMapper.selectResume(email,phone);
		return id;
	}

	@Override
	public Integer selectUserInfo(String email, String phone) {
		Integer id = sigMapper.selectUserInfo(email,phone);
		return id;
	}

	@Override
	public String findUserAccount(String account) {
		String isboolean = sigMapper.findUserAccount(account);
		return isboolean;
	}

	@Override
	public String findCompanyAccount(String account) {
		String isboolean = sigMapper.findCompanyAccount(account);
		return isboolean;
	}

	@Override
	public void signinCompanyInfo(String phone, String legal, String address, String email) {
		sigMapper.signinCompanyInfo(phone,legal,address,email);
		
	}

	@Override
	public String selectCompanyInfoId(String legal, String address, String email) {
		String id = sigMapper.selectCompanyInfoId(legal,address,email);
		return id;
	}

	@Override
	public void SigninCompany(String acc, String pass, String id) {
		// TODO Auto-generated method stub
		sigMapper.SigninCompany(acc,pass,id);
	}

	@Override
	public String findAdminAccount(String account) {
		// TODO Auto-generated method stub
		return sigMapper.findAdminAccount(account);
	}



	
	
	

}
